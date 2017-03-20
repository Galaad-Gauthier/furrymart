class QuotationCommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @quotation_comment = QuotationComment.new(strong_params(QuotationComment.new))
    @quotation_comment.sender = current_user

    authorize @quotation_comment

    if @quotation_comment.save

      if @quotation_comment.sender == @quotation_comment.quotation.artist
        if @quotation_comment.quotation.commissioner.allow_artist_quotation_comment_created_notification
          NotificationMailer.artist_quotation_comment_created(@quotation_comment).deliver_later
        end
      else
        if @quotation_comment.quotation.artist.allow_commissioner_quotation_comment_created_notification
          NotificationMailer.commissioner_quotation_comment_created(@quotation_comment).deliver_later
        end
      end

      redirect_to quotation_url(@quotation_comment.quotation)
    else
      redirect_to quotation_url(@quotation_comment.quotation)
    end
  end
end
