class RemoveIsInvoiceableFromProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :profiles, :is_invoiceable, :bool, default: false
  end
end
