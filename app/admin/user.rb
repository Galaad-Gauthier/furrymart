ActiveAdmin.register User do

  menu parent: "Users"

  permit_params :email, :password, :artist_rating, :commissioner_rating

  filter :email
  filter :name
  filter :show_adult_content
  filter :created_at
  filter :artist_rating
  filter :commissioner_rating

  action_item :login, only: [:show] do
    link_to 'Impersonate', user_impersonate_url(user_id: resource.id), method: :put
  end

  index do
    id_column
    column :email
    column :name

    column "QAA" do |user|
      user.quotations_as_artist.count
    end

    column "Cashed in ($)" do |user|
      user.quotations_as_artist.joins(:proposal).sum("proposals.usd_price")
    end

    column :artist_rating

    column "QAC" do |user|
      user.quotations_as_commissioner.count
    end

    column "Cashed out ($)" do |user|
      user.quotations_as_commissioner.joins(:proposal).sum("proposals.usd_price")
    end

    column :commissioner_rating

    column :created_at
    actions
  end

  show do
    attributes_table do
      row :email
      row :name
      row :show_adult_content
      row :created_at
      row :updated_at

      row "is watching" do |user|
        user.all_follows.count
      end

      row :last_sign_in_at
      row :last_sign_in_ip
    end
  end

  form do |f|
    f.inputs "User" do
      f.input :email
      f.input :artist_rating
      f.input :commissioner_rating
    end

    f.actions
  end

end
