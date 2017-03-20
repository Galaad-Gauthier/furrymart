class AddInvoiceFields < ActiveRecord::Migration[5.0]

  def change
    add_column :profiles, :is_invoiceable, :boolean, default: false
  end

end
