class Announcements::CommentsController < ApplicationController
  def create
    @comment = AnnouncementComment.new(strong_params(AnnouncementComment.new))

    authorize @comment

    @comment.save
    redirect_to announcement_url(@comment.announcement, anchor: "comments")
  end
end
