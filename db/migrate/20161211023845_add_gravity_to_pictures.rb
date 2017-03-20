class AddGravityToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :gravity_x, :integer
    add_column :pictures, :gravity_y, :integer
  end
end
