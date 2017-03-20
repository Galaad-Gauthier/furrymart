class RemoveAttachmentFromReports < ActiveRecord::Migration[5.0]
  def change
    remove_column :reports, :attachment, :string
  end
end
