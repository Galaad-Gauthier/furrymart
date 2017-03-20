class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    rename_table :pictures, :assets
    add_column :assets, :type, :string, index: true

    Asset.update_all(type: "Picture")
  end
end
