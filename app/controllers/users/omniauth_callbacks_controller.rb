class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    @user = User.find_or_initialize_by(email: request.env["omniauth.auth"]["info"]["email"]) do |user|
      user.language = :en
      user.password = SecureRandom.uuid
      user.name = request.env["omniauth.auth"]["info"]["name"]
    end

    unless @user.persisted?
      @user.save!

      begin
        s3_avatar_url = Uploader.put(@user.id, request.env["omniauth.auth"]["info"]["image"].sub("_normal", ""))
      rescue
        s3_avatar_url = nil
      end

      @user.profile.update!({
        biography: request.env["omniauth.auth"]["info"]["description"],
        twitter: request.env["omniauth.auth"]["info"]["nickname"],
        s3_avatar_url: s3_avatar_url
      })
    end

    sign_in_and_redirect @user, :event => :authentication
  end

  def failure
    redirect_to root_path
  end
end
