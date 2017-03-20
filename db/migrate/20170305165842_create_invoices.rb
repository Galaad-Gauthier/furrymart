class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :invoice_reference
      t.float :price
      t.text :invoicing_informations

      t.text :additional_informations
      t.string :vat_number
      t.string :currency_uid

      t.datetime :due_date

      t.references :quotation

      t.timestamps
    end
  end
end
