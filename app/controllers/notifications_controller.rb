class NotificationsController < ApplicationController

  def index
    @activities = policy_scope(PublicActivity::Activity)
      .includes(:trackable, :recipient, { owner: [ :profile ] })
      .order(created_at: :desc)
      .page(page)
      .per(per)

    authorize @activities

    PublicActivity::Activity.mark_as_read!(PublicActivity::Activity.where(trackable_type: "News", recipient: current_user).to_a, for: current_user) if current_user
  end

  def mark_all_as_read
    PublicActivity::Activity.mark_as_read!(PublicActivity::Activity.where(recipient: current_user).to_a, :for => current_user)

    redirect_back fallback_location: notifications_url
  end

end
