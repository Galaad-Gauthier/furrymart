class QuestionPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope
    end
  end

  def permitted_attributes
    [
      :sender_id,
      :recipient_id,
      :body,
      :response
    ]
  end

  def create?
    user && record.sender == user && record.recipient != user
  end

  def update?
    user && record.recipient == user
  end

end
