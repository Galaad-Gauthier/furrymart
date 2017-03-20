class AnnouncementsController < ApplicationController
  def index
    @announcements = Announcement.where(draft: false).order(created_at: :desc).page(page).per(per)
  end

  def show
    @announcement = Announcement.find(params[:id])
    authorize @announcement

    @comments = @announcement.comments.order(created_at: :desc)
  end
end
