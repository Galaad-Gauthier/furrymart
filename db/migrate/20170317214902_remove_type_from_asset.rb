class RemoveTypeFromAsset < ActiveRecord::Migration[5.0]
  def change
    remove_column :assets, :type, :string
  end
end
