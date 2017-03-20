class Artists::QuotationsController < ApplicationController

  include SlugRedirectable

  before_action :authenticate_user!, except: [:index]
  before_action :set_artist, only: [:new, :create, :index, :edit, :update]
  before_action :set_quotation, only: [:edit, :update, :destroy, :publish, :unpublish]

  def index
    @quotations = QuotationPolicy::Scope.new(current_user, @artist.quotations_as_artist).resolve_for_artist
      .order(:created_at)
      .includes({ :proposal => [ :delay ] }, :commissioner, :assets)
      .filter(params.permit(:state))
      .page(page)
      .per(per)

    authorize @quotations
  end

  def new
    @quotation = Quotation.new(commissioner: current_user, artist: @artist)
    authorize @quotation
  end

  def create
    @quotation = Quotation.new(strong_params(Quotation.new))
    authorize @quotation

    if @quotation.save
      if params[:publish]
        publish!
        flash[:notice] = I18n.t("artists.quotations.publish.success")
      else
        flash[:notice] = I18n.t("artists.quotations.create.success")
      end

      redirect_to commissioner_quotations_url(commissioner_id: @quotation.commissioner.slug)
    else
      render 'new'
    end
  end

  def update
    @quotation.assign_attributes(strong_params(@quotation))
    authorize @quotation

    if @quotation.save
      if params[:publish]
        publish!
        flash[:notice] = I18n.t("artists.quotations.publish.success")
      else
        flash[:notice] = I18n.t("artists.quotations.create.success")
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

  def publish
    authorize @quotation, :publish_for_artist?

    @quotation.update(public_for_artist: true)

    head :no_content
  end

  def unpublish
    authorize @quotation, :unpublish_for_artist?

    @quotation.update(public_for_artist: false)

    head :no_content
  end

  protected

  def publish!
    @quotation.publish!
    @quotation.create_activity key: "quotation.publish", owner: current_user, recipient: @quotation.artist

     if @quotation.artist.allow_quotation_created_notification
       NotificationMailer.quotation_created(@quotation).deliver_later
     end
  end

  def set_artist
    @artist = User.find(params[:artist_id])
    redirect_if_new_slug_for(@artist, :artist_id)
  end

  def set_quotation
    @quotation = Quotation.find(params[:id] || params[:quotation_id])
  end
end
