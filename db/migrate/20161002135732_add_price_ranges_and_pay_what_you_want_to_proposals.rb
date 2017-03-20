class AddPriceRangesAndPayWhatYouWantToProposals < ActiveRecord::Migration[5.0]
  
  def up
    add_column :proposals, :can_pay_what_you_want, :boolean, default: false
    add_column :proposals, :currency_uid, :string

    Proposal.find_each{ |proposal| proposal.update_columns(price: nil)}
    change_column :proposals, :price, 'integer USING CAST(price AS integer)'
  end

  def down
    change_column :proposals, :price, :string

    remove_column :proposals, :currency_uid, :string
    remove_column :proposals, :can_pay_what_you_want, :boolean
  end

end
