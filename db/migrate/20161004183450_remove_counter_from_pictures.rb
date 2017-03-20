class RemoveCounterFromPictures < ActiveRecord::Migration[5.0]
  def change
    remove_column :pictures, :counter, :boolean
  end
end
