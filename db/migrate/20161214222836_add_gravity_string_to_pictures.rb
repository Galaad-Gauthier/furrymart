class AddGravityStringToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :gravity, :string
  end
end
