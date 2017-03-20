class AssetPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve(owner = nil)
      owner ||= user
      if user == owner || owner.are_assets_public?
        if user.present? && (user.show_adult_content? || user == owner)
          scope
        else
          scope.where(is_adult_content: false)
        end
      else
        scope.none
      end
    end
  end

  def permitted_attributes
    [ :user_id, :s3_file_url, :is_adult_content, :description, :gravity_x, :gravity_y, :gravity ]
  end

  def index?
    true
  end

  def create?
    record.user == user
  end

  def update?
    create?
  end

  def destroy?
    record.user == user && record.is_deleted == false
  end

  # :nocov:
  def import_from_furaffinity?
    user.profile.furaffinity.present?
  end
  # :nocov:
end
