class AddTitleToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :description, :string
  end
end
