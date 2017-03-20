class AddTosToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :proposals, :tos, :text
  end
end
