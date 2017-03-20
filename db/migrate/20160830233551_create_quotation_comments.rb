class CreateQuotationComments < ActiveRecord::Migration[5.0]
  def change
    create_table :quotation_comments do |t|
      t.references :quotation, index: true

      t.references :sender, index: true
      t.references :recipient, index: true

      t.text :body
      t.string :attachment

      t.timestamps
    end
  end
end
