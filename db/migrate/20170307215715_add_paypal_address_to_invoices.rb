class AddPaypalAddressToInvoices < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :invoicing_paypal_address, :string
  end
end
