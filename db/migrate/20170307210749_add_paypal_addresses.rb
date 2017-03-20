class AddPaypalAddresses < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :invoicing_paypal_address, :string
    add_column :users, :billing_paypal_address, :string
  end
end
