class AddInvoicingInformationsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :commissioner_invoicing_informations, :text
    add_column :users, :artist_invoicing_informations, :text
  end
end
