class Commissioners::QuotationsController < ApplicationController

  include SlugRedirectable

  before_action :authenticate_user!, except: [:index]
  before_action :set_commisionner
  before_action :set_quotation, only: [:publish, :unpublish]

  def index
    @quotations = QuotationPolicy::Scope.new(current_user, @commissioner.quotations_as_commissioner).resolve_for_commissioner
      .order(:created_at)
      .includes(:artist, :proposal, :commissioner, :assets)
      .filter(params.permit(:state))
      .page(page)
      .per(per)

    authorize @quotations

    respond_to do |format|
      format.html
    end
  end

  def publish
    authorize @quotation, :publish_for_commissioner?

    @quotation.update(public_for_commissioner: true)

    head :no_content
  end

  def unpublish
    authorize @quotation, :unpublish_for_commissioner?

    @quotation.update(public_for_commissioner: false)

    head :no_content
  end

  protected

  def set_commisionner
    @commissioner = User.find(params[:commissioner_id])
    redirect_if_new_slug_for(@commissioner, :commissioner_id)
  end

  def set_quotation
    @quotation = Quotation.find(params[:id] || params[:quotation_id])
  end
end
