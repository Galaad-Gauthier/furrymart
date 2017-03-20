class AddHasBusinessPaypalToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :has_business_paypal, :bool, default: :false
  end
end
