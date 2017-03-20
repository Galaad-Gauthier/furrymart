class QuotationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_quotation, only: [:show, :accept, :cancel_approval, :refuse, :paid, :finish, :rate_artist, :rate_commissioner]
  before_action :get_quotation_assets, only: [:show]

  def show
    authorize @quotation

    PublicActivity::Activity.mark_as_read!(PublicActivity::Activity.where(trackable: @quotation).to_a, for: current_user)
    PublicActivity::Activity.mark_as_read!(PublicActivity::Activity.where(trackable: @quotation.comments).to_a, for: current_user)
  end

  def accept
    transition('accept')

    if @quotation.commissioner.allow_quotation_accepted_notification
      NotificationMailer.quotation_accepted(@quotation).deliver_later
    end
  end

  def refuse
    transition('refuse')
    @quotation.update(params.require(:quotation).permit(:refuse_reason, :refuse_comment))

    if @quotation.commissioner.allow_quotation_refused_notification
      NotificationMailer.quotation_refused(@quotation).deliver_later
    end
  end

  def cancel_approval
    transition('cancel_approval')
    @quotation.update(refuse_reason: nil, refuse_comment: nil)

    if @quotation.commissioner.allow_quotation_cancelled_notification
      NotificationMailer.quotation_cancelled(@quotation).deliver_later
    end
  end

  def paid
    transition('paid')

    if @quotation.commissioner.allow_quotation_paid_notification
      NotificationMailer.quotation_paid(@quotation).deliver_later
    end
  end

  def finish
    transition('finish')

    if @quotation.commissioner.allow_quotation_done_notification
      NotificationMailer.quotation_done(@quotation).deliver_later
    end
  end

  def rate_commissioner
    authorize @quotation
    @quotation.update(commissioner_rating: params[:rating])

    flash[:notice] = I18n.t("quotations.rate_commissioner.success")
    redirect_back fallback_location: quotation_url(@quotation)
  end

  def rate_artist
    authorize @quotation
    @quotation.update(artist_rating: params[:rating])

    flash[:notice] = I18n.t("quotations.rate_artist.success")
    redirect_back fallback_location: quotation_url(@quotation)
  end

  protected

  def transition(event)
    authorize @quotation
    @quotation.send("#{event}!")
    @quotation.create_activity key: "quotation.#{event}", owner: current_user, recipient: @quotation.commissioner

    flash[:notice] = I18n.t("quotations.#{event}.success")

    redirect_to quotation_url(@quotation)
  end

  def get_quotation_assets
    @quotation_assets = @quotation.assets.by_reversed_date
  end

  def set_quotation
    @quotation = Quotation.includes(comments: [:attachments]).find(params[:id] || params[:quotation_id])
  end

end
