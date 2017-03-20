class AddCharactersOrderingOnProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :characters_order, :integer, array: true, default: []
  end
end
