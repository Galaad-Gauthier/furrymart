class AddIsDeletedToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :is_deleted, :boolean, index: true, default: false
  end
end
