class RegistrationsController < Devise::RegistrationsController
  respond_to :html, :js

  def edit_payment_settings
    @user = current_user
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

end
