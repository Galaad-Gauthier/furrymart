class AddDeletedAtToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :is_deleted, :boolean, index: true, default: false
  end
end
