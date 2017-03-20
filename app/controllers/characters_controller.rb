class CharactersController < ApplicationController

  include SlugRedirectable

  before_action :find_character, only: [:show, :activate, :deactivate]
  before_action :set_character_keywords, only: [:show]
  before_action :get_character_assets, only: [:show]

  def show
    respond_to do |format|
      format.html
    end
  end

  def activate
    authorize @character

    @character.update(visible: true)

    head :no_content
  end

  def deactivate
    authorize @character

    @character.update(visible: false)

    head :no_content
  end

  protected

  def find_character
    @character = Character.find(params[:id] || params[:character_id])

    redirect_if_new_slug_for(@character, [:id, :character_id])
  end

  def get_character_assets
    @character_assets = @character.assets
  end

  def set_character_keywords
    @keywords += [@character.name, @character.species]
  end

end
