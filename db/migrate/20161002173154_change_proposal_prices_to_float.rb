class ChangeProposalPricesToFloat < ActiveRecord::Migration[5.0]

  def change
    change_column :proposals, :price, :float
  end

end
