class CreateCharactersPictures < ActiveRecord::Migration[5.0]

  def change
    create_table :characters_pictures do |t|
      t.belongs_to :character
      t.belongs_to :picture
      t.timestamps
    end
  end

end
