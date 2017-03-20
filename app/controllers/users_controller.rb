class UsersController < ApplicationController
  before_action :find_user, only: [:follow, :unfollow, :destroy, :watchers, :watching, :impersonate]
  before_action :authenticate_user!, only: [:index, :follow, :unfollow, :impersonate]

  def index
    @users = User.where("slug LIKE ?", "#{params[:q]}%").page(1).per(10)

    respond_to do |format|
      format.json {
        render json: @users.map { |user| { name: user.slug, avatar: user.profile.avatar_url(:avatar) } }
      }
    end
  end

  def follow
    authorize @user

    if current_user.follow(@user)
      NotificationMailer.follow(current_user, @user).deliver_later if @user.allow_follow_notification

      @user.create_activity key: "user.follow", trackable: current_user, owner: current_user, recipient: @user

      flash[:notice] = I18n.t("users.follow.success", { user_name: @user.name })
    end

    redirect_back(fallback_location: profile_url(user_id: @user.slug))
  end

  def unfollow
    authorize @user

    if current_user.stop_following(@user)
      flash[:notice] = I18n.t("users.unfollow.success", { user_name: @user.name })
    end

    redirect_back(fallback_location: profile_url(user_id: @user.slug))
  end

  def destroy
    authorize @user

    if @user.update(is_deleted: true)
      @user.assets.update_all(is_deleted: true)
      @user.characters.update_all(is_deleted: true)
      @user.proposals.update_all(is_deleted: true)
      sign_out_and_redirect(current_user)
    else
      redirect_to edit_user_registration
    end
  end

  def watchers
    authorize @user
    @watchers = User.where(id: @user.followers_scoped.where(follower_type: "User").select(:follower_id)).includes(:profile)

    render layout: false
  end

  def watching
    authorize @user
    @watcheds = User.where(id: @user.follows_scoped.where(followable_type: "User").select(:followable_id)).includes(:profile)

    render layout: false
  end

  # :nocov:
  def impersonate
    authorize @user
    sign_in(@user)
    redirect_to root_path
  end
  # :nocov:

  protected

  def find_user
    @user = User.find(params[:id] || params[:user_id])
  end

end
