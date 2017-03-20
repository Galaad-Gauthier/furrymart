class AddSubjectToAttachments < ActiveRecord::Migration[5.0]
  def change
    add_reference :attachments, :subject, index: true, polymorphic: true
  end
end
