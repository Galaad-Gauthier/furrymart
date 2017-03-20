class UserPolicy < ApplicationPolicy
  def follow?
    true
  end

  def unfollow?
    true
  end

  def destroy?
    record == user
  end

  def watchers?
    true
  end

  def watching?
    true
  end

  def impersonate?
    AdminUser.exists?(email: user.email)
  end

end
