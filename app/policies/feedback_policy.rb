class FeedbackPolicy < ApplicationPolicy
  def permitted_attributes
    [ :user_id, :body ]
  end

  def create?
    !record.user || record.user == user
  end
end
