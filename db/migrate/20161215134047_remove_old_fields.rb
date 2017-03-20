class RemoveOldFields < ActiveRecord::Migration[5.0]
  def change
    remove_column :pictures, :file, :string
    remove_column :profiles, :avatar, :string
    remove_column :quotation_comments, :attachment, :string
  end
end
