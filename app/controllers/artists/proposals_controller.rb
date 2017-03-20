class Artists::ProposalsController < ApplicationController

  include SlugRedirectable

  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :duplicate]
  before_action :find_artist
  before_action :find_proposal, only: [:duplicate, :show, :edit, :update, :destroy]

  before_action :get_user_assets, only: [:new, :edit, :duplicate, :update, :create]

  def new
    @proposal = Proposal.new(artist: @artist)
    authorize @proposal
  end

  def duplicate
    @proposal.id = nil

    authorize @proposal
    render 'new'
  end

  def create
    @proposal = Proposal.new(strong_params(Proposal.new).merge(visible: !!params['visible']))
    @proposal.artist = @artist
    authorize @proposal

    if @proposal.save
      flash[:notice] = I18n.t("artists.proposals.create.success", { proposal_title: @proposal.title })

      redirect_to profile_url(user_id: @artist.slug)
    else
      render 'new'
    end
  end

  def edit
    authorize @proposal
  end

  def update
    @proposal.assign_attributes(strong_params(@proposal))
    authorize @proposal

    if @proposal.save
      flash[:notice] = I18n.t("artists.proposals.update.success", { proposal_title: @proposal.title })

      redirect_to profile_url(user_id: current_user.slug)
    else
      render 'edit'
    end
  end

  def destroy
    authorize @proposal
    @proposal.update(is_deleted: true)

    flash[:notice] = I18n.t("artists.proposals.destroy.success", { proposal_title: @proposal.title })

    redirect_to profile_url(user_id: current_user.slug)
  end

  protected

  def find_artist
    @artist = User.find(params[:artist_id])

    redirect_if_new_slug_for(@artist, :artist_id)
  end

  def find_proposal
    @proposal = Proposal.find(params[:id] || params[:proposal_id])

    redirect_if_new_slug_for(@proposal, [:id, :proposal_id])
  end

  def get_user_assets
    @user_assets = pundit_policy_scope(current_user.assets).order(created_at: :desc)
  end

end
