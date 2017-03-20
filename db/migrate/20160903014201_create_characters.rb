class CreateCharacters < ActiveRecord::Migration[5.0]
  
  def change
    create_table :characters do |t|
      t.string :name
      t.string :species
      t.text :description
      t.belongs_to :user
      t.timestamps
    end
  end

end
