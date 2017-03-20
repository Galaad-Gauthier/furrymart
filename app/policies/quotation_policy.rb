class QuotationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve_for_commissioner
      if user.present?
        scope.where("quotations.commissioner_id = ? OR quotations.public_for_commissioner = ?", user.id, true)
      else
        scope.where("quotations.public_for_commissioner = ?", true)
      end
    end

    def resolve_for_artist
      if user.present?
        scope.where("(quotations.artist_id = ? OR quotations.public_for_artist = ?) AND quotations.state != 'draft'", user.id, true)
      else
        scope.where("quotations.public_for_artist = ? AND quotations.state != 'draft'", true)
      end
    end
  end

  def permitted_attributes
    [
      :proposal_id,
      :description,
      :tos_accepted,
      :commissioner_id,
      :artist_id,
      { quotation_assets_attributes: [:asset_id, :id, :_destroy], character_ids: [] }
    ]
  end

  def index?
    true
  end

  def new?
    user_is_commissioner? && proposal_is_valid? && artist_is_valid?
  end

  def create?
    new?
  end

  def show?
    user_is_commissioner? || (user_is_artist? && !record.draft?)
  end

  def edit?
    user_is_commissioner? && record.draft? && artist_is_valid?
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end

  def accept?
    user_is_artist?
  end

  def cancel_approval?
    user_is_artist? && record.state.in?(['refused', 'waiting_payment'])
  end

  def paid?
    user_is_artist?
  end

  def refuse?
    user_is_artist?
  end

  def finish?
    user_is_artist?
  end

  def rate_commissioner?
    record.done? && user_is_artist?
  end

  def rate_artist?
    record.done? && user_is_commissioner?
  end

  def publish_for_artist?
    user_is_artist?
  end

  def unpublish_for_artist?
    publish_for_artist?
  end

  def publish_for_commissioner?
    user_is_commissioner?
  end

  def unpublish_for_commissioner?
    publish_for_commissioner?
  end

  protected

  def user_is_commissioner?
    record.commissioner == user
  end

  def user_is_artist?
    record.artist == user
  end

  def proposal_is_valid?
    !record.proposal || record.proposal.visible
  end

  def artist_is_valid?
    if record.proposal.present?
      record.proposal.artist == record.artist && record.artist != user
    else
      record.artist != user
    end
  end
end
