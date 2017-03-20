class RemoveAttachmentFromFeedbacks < ActiveRecord::Migration[5.0]
  def change
    remove_column :feedbacks, :attachment, :string
  end
end
