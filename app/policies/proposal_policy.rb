class ProposalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("proposals.is_deleted = ?", false)
    end
  end

  def permitted_attributes
    [
      :title,
      :description,
      :price,
      :delay_id,
      :style_id,
      :category_id,
      :visible,
      :tos,
      :currency_uid,
      :can_pay_what_you_want,
      :tag_list,
      :con_list,
      :banner_id,
      proposal_assets_attributes: [:asset_id, :id, :_destroy]
    ]
  end

  def new?
    create?
  end

  def duplicate?
    create?
  end

  def create?
    record.artist == user && record.is_deleted == false &&
      (record.banner.blank? || AssetPolicy.new(user, record.banner).create?) &&
      record.proposal_assets.all? { |proposal_asset| AssetPolicy.new(user, proposal_asset.asset).create? }
  end

  def show?
    true
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
