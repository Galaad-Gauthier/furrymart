class ProfilePolicy < ApplicationPolicy
  def permitted_attributes
    [ :biography, :s3_avatar_url ] + Profile::SITES + [ proposals_order: [], characters_order: [] ]
  end

  def show?
    true
  end

  def edit?
    record.user == user
  end

  def update?
    record.user == user
  end
end
