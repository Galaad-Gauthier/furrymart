class CreateQuotationsCharacters < ActiveRecord::Migration[5.0]

  def change
    create_table :quotations_characters do |t|
      t.belongs_to :character
      t.belongs_to :quotation
      t.timestamps
    end
  end

end
