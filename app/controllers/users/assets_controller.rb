class Users::AssetsController < ApplicationController

  include SlugRedirectable

  before_action :authenticate_user!, only: [:create, :update, :destroy, :import_from_furaffinity]
  before_action :find_user, only: [:index, :create, :update, :destroy]
  before_action :set_asset, only: [:show, :update, :destroy]

  def index
    @asset = Asset.new(user: current_user)

    @assets = AssetPolicy::Scope.new(current_user, @user.assets).resolve(@user)
      .includes(:user)
      .by_reversed_date
      .page(page)
      .per(per)

    authorize @assets
  end

  def create
    @asset = Asset.new(strong_params(Asset.new))
    authorize @asset

    if @asset.save

      respond_to do |format|
        format.html {
          flash[:notice] = I18n.t("users.assets.create.success")
          redirect_to user_assets_url(user_id: @asset.user.slug)
        }
        format.js {
          render partial: "users/assets/partial_asset", locals: { asset: @asset }
        }
      end
    else
      redirect_to user_assets_url(user_id: @asset.user.slug)
    end
  end

  def update
    @asset.assign_attributes(strong_params(@asset))
    authorize @asset

    if @asset.save
      respond_to do |format|
        format.html {
          flash[:notice] = I18n.t("users.assets.update.success")
          redirect_to user_assets_url(user_id: @asset.user.slug)
        }
        format.js {
          render partial: "users/assets/partial_asset"
        }
      end
    else
      redirect_to user_assets_url(user_id: @asset.user.slug)
    end
  end

  def destroy
    authorize @asset
    @asset.update(is_deleted: true)

    flash[:notice] = I18n.t("users.assets.destroy.success")

    redirect_back fallback_location: user_assets_url(user_id: @asset.user.slug)
  end

  # :nocov:
  def import_from_furaffinity
    authorize Asset.new

    FuraffinityPicturesImporterJob.perform_later(current_user)
    head :no_content
  end
  # :nocov:

  private

  def find_user
    @user = User.find(params[:user_id])

    redirect_if_new_slug_for(@user, :user_id)
  end

  def set_asset
    @asset = Asset.find(params[:id])
  end
end
