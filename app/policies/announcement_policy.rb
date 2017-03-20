class AnnouncementPolicy < ApplicationPolicy
  def show?
    record.draft == false
  end
end
