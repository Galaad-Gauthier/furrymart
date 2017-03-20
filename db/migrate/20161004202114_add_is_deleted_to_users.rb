class AddIsDeletedToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :is_deleted, :boolean, index: true, default: false
  end
end
