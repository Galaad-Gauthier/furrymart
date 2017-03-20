class WishPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def permitted_attributes
    [ :user_id, :proposal_id ]
  end

  def create?
    user && record.user == user && record.proposal.artist != user
  end

  def destroy?
    create?
  end
end
