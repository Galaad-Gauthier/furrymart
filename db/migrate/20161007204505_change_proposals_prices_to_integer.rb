class ChangeProposalsPricesToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :proposals, :price, :integer
  end
end
