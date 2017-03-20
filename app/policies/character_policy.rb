class CharacterPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.where("characters.user_id = ? OR characters.visible = ?", user.try(:id), true)
    end
  end

  def permitted_attributes
    [
      :name,
      :description,
      :species,
      :banner_id,
      :visible,
      character_assets_attributes: [:asset_id, :id, :_destroy]
    ]
  end

  def create?
    record.user == user && record.is_deleted == false &&
      (record.banner.blank? || AssetPolicy.new(user, record.banner).create?) &&
      record.character_assets.all? { |character_asset| AssetPolicy.new(user, character_asset.asset).create? }
  end

  def new?
    record.user == user
  end

  def edit?
    create?
  end

  def update?
    create?
  end

  def destroy?
    create?
  end

  def activate?
    create?
  end

  def deactivate?
    create?
  end

end
