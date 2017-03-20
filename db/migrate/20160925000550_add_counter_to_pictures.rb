class AddCounterToPictures < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :counter, :integer
  end
end
