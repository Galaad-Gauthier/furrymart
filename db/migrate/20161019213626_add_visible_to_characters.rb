class AddVisibleToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_column :characters, :visible, :boolean, default: false
  end
end
