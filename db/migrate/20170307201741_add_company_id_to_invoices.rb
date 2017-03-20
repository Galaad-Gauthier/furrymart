class AddCompanyIdToInvoices < ActiveRecord::Migration[5.0]
  def change
    add_column :invoices, :company_id, :string
  end
end
