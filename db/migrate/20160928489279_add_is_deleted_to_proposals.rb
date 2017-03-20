class AddIsDeletedToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :proposals, :is_deleted, :boolean, index: true, default: false
  end
end
