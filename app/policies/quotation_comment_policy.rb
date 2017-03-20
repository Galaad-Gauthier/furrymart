class QuotationCommentPolicy < ApplicationPolicy
  def permitted_attributes
    [ :body, :quotation_id, attachments_attributes: [:file_url, :original_filename, :subject_id, :subject_type ] ]
  end

  def create?
    is_allowed_user? && are_attachments_valid?
  end

  protected
  def is_allowed_user?
    (record.quotation.artist == user || record.quotation.commissioner == user)
  end

  def are_attachments_valid?
    record.attachments.select do |attachment|
      attachment.subject.present?
    end.all? do |attachment|
      Pundit.policy(user, attachment.subject).create?
    end
  end
end
