class AddSlugToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :slug, :string
    add_index :characters, :slug

    Character.find_each(&:save!)
  end
end
