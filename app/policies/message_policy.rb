class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where("messages.recipient_id = ? OR messages.sender_id = ?", user, user)
    end
  end

  def permitted_attributes
    [ :sender_id, :recipient_id, :body ]
  end

  def create?
    record.sender == user
  end
end
