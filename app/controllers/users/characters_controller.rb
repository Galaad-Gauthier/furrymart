class Users::CharactersController < ApplicationController

  include SlugRedirectable

  before_action :find_user, only: [:edit, :new, :create, :update]
  before_action :find_character, only: [:show, :update, :edit, :destroy]
  before_action :build_character, only: [:new, :create]
  before_action :get_character_assets, only: [:new, :edit, :create, :update]

  def new
    authorize @character
  end

  def create
    @character.assign_attributes(character_params)
    authorize @character

    if @character.save
      flash[:notice] = I18n.t("users.characters.create.success", { character_name: @character.name })

      redirect_to profile_path(user_id: current_user.slug)
    else
      render 'new'
    end
  end

  def edit
    authorize @character
  end

  def update
    @character.assign_attributes(character_params)
    authorize @character

    if @character.save
      flash[:notice] = I18n.t("users.characters.update.success", { character_name: @character.name })

      redirect_to character_path(id: @character.slug)
    else
      render 'edit'
    end
  end

  def destroy
    authorize @character
    @character.update(is_deleted: true)

    flash[:notice] = I18n.t("users.characters.destroy.success", { character_name: @character.name })

    redirect_to profile_path(user_id: current_user.slug)
  end

  protected

  def get_character_assets
    @character_assets = pundit_policy_scope(@user.assets).order(created_at: :desc)
  end

  def find_user
    @user = User.find(params[:user_id])

    redirect_if_new_slug_for(@user, :user_id)
  end

  def find_character
    @character = Character.find(params[:id])

    redirect_if_new_slug_for(@character, :id)
  end

  def build_character
    @character = Character.new(user: @user, visible: true)
  end

  def character_params
    strong_params(Character.new)
  end

end
