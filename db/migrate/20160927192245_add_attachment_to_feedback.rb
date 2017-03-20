class AddAttachmentToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_column :feedbacks, :attachment, :string
  end
end
