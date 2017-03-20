class AnnouncementCommentPolicy < ApplicationPolicy
  def permitted_attributes
    [ :body, :sender_id, :announcement_id ]
  end

  def create?
    record.sender == user
  end
end
