class ReportPolicy < ApplicationPolicy

  def permitted_attributes
    [
      :reporter_id,
      :body
    ]
  end

  def create?
    user && record.reporter == user && record.user != user
  end

end
