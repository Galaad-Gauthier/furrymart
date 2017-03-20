class AddUsdPriceToProposals < ActiveRecord::Migration[5.0]

  def change
    add_column :proposals, :usd_price, :float

    Proposal.find_each{ |proposal| proposal.save! }
  end

end
