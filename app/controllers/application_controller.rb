class ApplicationController < ActionController::Base
  include PublicActivity::StoreController

  before_action :auto_sign_in, if: -> { Rails.configuration.autologin && !user_signed_in? && params[:autologin] != "no" }
  before_action :store_current_location, unless: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  before_action :initialize_keywords

  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: -> { controller_name == 'sessions' && action_name == 'create' }

  def page
    params[:page]
  end

  def per
    params[:per]
  end

  protected

  # :nocov:
  def auto_sign_in
    sign_in(User.order("random()").first)
    redirect_to root_path
  end
  # :nocov:

  def strong_params record
    params.require(record.class.name.underscore).permit(policy(record).permitted_attributes)
  end

  def user_not_authorized
    flash[:warning] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  def store_current_location
    store_location_for(:user, request.url) if request.method == "GET" && request.path != opensearch_path
  end

  def after_sign_out_path_for(resource)
    request.referrer || root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:show_adult_content, :name, :language])
    devise_parameter_sanitizer.permit(:account_update, keys: [
      :show_adult_content,
      :name,
      :language,
      :are_assets_public,
      :artist_invoicing_informations,
      :commissioner_invoicing_informations,
      :billing_paypal_address,
      :invoicing_paypal_address,
      :company_id,
      :vat_number,
      :has_business_paypal,
    ] + User::NOTIFICATIONS_PERMISSIONS)
  end

  def set_locale
    I18n.locale = (current_user && current_user.language) || I18n.default_locale
  end

  def initialize_keywords
    @keywords = Rails.application.config.default_keywords
  end
end
