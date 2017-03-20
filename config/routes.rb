Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, skip: :registrations, controllers: { :omniauth_callbacks => "users/omniauth_callbacks" }
  devise_scope :user do
    get '/users/auth/:provider', to: "omniauth_callbacks#%{provider}", as: :user_omniauth_authorize

    resource :registration,
      only: [:new, :create, :edit, :update, :edit_payment_settings],
      path: 'users',
      path_names: { new: 'sign_up' },
      controller: 'registrations',
      as: :user_registration do
        get :cancel
        get "/payment/edit", as: :edit_payment_settings, to: "registrations#edit_payment_settings"
        get "/twitter_redirect", as: :twitter_redirect, to: "registrations#twitter_redirect"
      end
  end

  root to: "proposals#index"

  resources :users, only: [:index, :destroy] do
    get :watchers
    get :watching
    put :follow
    put :unfollow

    put :impersonate

    resources :characters, controller: "users/characters"
    resources :questions, controller: "users/questions", only: [:create, :update]
    resources :reports, controller: "users/reports", only: [:create]
    resources :wishes, controller: "users/wishes", only: [:create, :destroy]
    resource :profile, controller: "users/profiles", only: [:edit, :update]
    resources :assets, controller: "users/assets", only: [:index, :create, :update, :destroy]
    resources :musics, controller: "users/musics", only: [:create, :update, :destroy]
    put "/assets/import/furaffinity", as: "import_from_furaffinity", to: "users/assets#import_from_furaffinity"
    get "/pictures", to: "users/assets#index"
  end

  resources :artists, only: [] do
    resources :proposals, only: [:new, :create, :edit, :update, :destroy], controller: "artists/proposals" do
      get :duplicate
    end

    resources :quotations, only: [:new, :create, :index, :edit, :update, :destroy], controller: "artists/quotations" do
      put :publish
      put :unpublish
    end
  end

  resources :commissioners, only: [] do
    resources :quotations, only: [:index], controller: "commissioners/quotations" do
      put :publish
      put :unpublish
    end
  end

  resources :proposals, only: [:index, :show] do
    resources :quotations, only: [:new, :create, :edit, :update, :destroy], controller: "proposals/quotations"

    put :activate
    put :deactivate
  end

  resources :quotations, only: [:show] do
    put :accept
    put :refuse
    put :cancel_approval
    put :cancel_refusal
    put :paid
    put :finish

    put :rate_commissioner
    put :rate_artist

    resources :invoices, controller: "quotations/invoices" do
      put :paid
      put :cancel_paid

      get :paypal_redirect
    end
  end

  resources :quotation_comments, only: [:create]
  resources :characters, only: [:show] do
    put :activate
    put :deactivate
  end

  resources :messages, only: [:index, :create]

  resources :feedbacks, only: [:create]
  resources :notifications, only: [:index]
  resources :announcements, only: [:index, :show] do
    resource :comments, only: [:create], controller: "announcements/comments"
  end

  put "notifications/mark_all_as_read", to: "notifications#mark_all_as_read"

  get "/opensearch.xml" => "proposals#opensearch", as: "opensearch"

  get "/:user_id" => "users/profiles#show", as: "profile"

  get '/s3/sign', to: "s3#sign"

  # legacy
  get "/users/:user_id/profile", to: redirect('/%{user_id}')
  get "/:user_id/characters", to: redirect('/%{user_id}')
  get "/artists/:user_id/proposals", to: redirect('/%{user_id}')
end
