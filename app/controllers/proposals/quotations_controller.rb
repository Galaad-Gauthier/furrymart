class Proposals::QuotationsController < ApplicationController

  include SlugRedirectable

  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_proposal, only: [:new, :create, :edit, :update]
  before_action :set_quotation, only: [:edit, :update, :destroy]

  def new
    @quotation = Quotation.new(proposal: @proposal, commissioner: current_user, artist: @proposal.artist)
    authorize @quotation
  end

  def create
    @quotation = Quotation.new(strong_params(Quotation.new))
    authorize @quotation

    if @quotation.save
      if params[:publish]
        publish!
        flash[:notice] = I18n.t("proposals.quotations.publish.success")
      else
        flash[:notice] = I18n.t("proposals.quotations.create.success")
      end

      redirect_to commissioner_quotations_url(commissioner_id: @quotation.commissioner.slug)
    else
      render 'new'
    end
  end

  def edit
    authorize @quotation
  end

  def update
    @quotation.assign_attributes(strong_params(@quotation))
    authorize @quotation

    if @quotation.save
      if params[:publish]
        publish!
        flash[:notice] = I18n.t("proposals.quotations.publish.success")
      else
        flash[:notice] = I18n.t("proposals.quotations.create.success")
      end

      redirect_to commissioner_quotations_path(commissioner_id: @quotation.commissioner.slug)
    else
      render 'edit'
    end
  end

  def destroy
    authorize @quotation
    @quotation.destroy

    flash[:notice] = I18n.t("quotations.destroy.success")

    redirect_to commissioner_quotations_path(commissioner_id: @quotation.commissioner.slug)
  end

  protected

  def publish!
    @quotation.publish!
    @quotation.create_activity key: "quotation.publish", owner: current_user, recipient: @quotation.artist

     if @quotation.artist.allow_quotation_created_notification
       NotificationMailer.quotation_created(@quotation).deliver_later
     end
  end

  def set_proposal
    @proposal = Proposal.find(params[:proposal_id])

    redirect_if_new_slug_for(@proposal, :proposal_id)
  end

  def set_quotation
    @quotation = Quotation.find(params[:id])
  end
end
