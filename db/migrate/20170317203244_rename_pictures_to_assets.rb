class RenamePicturesToAssets < ActiveRecord::Migration[5.0]
  def change
    rename_table :quotations_pictures, :quotations_assets
    rename_column :quotations_assets, :picture_id, :asset_id

    rename_table :characters_pictures, :characters_assets
    rename_column :characters_assets, :picture_id, :asset_id

    rename_table :proposals_pictures, :proposals_assets
    rename_column :proposals_assets, :picture_id, :asset_id

    rename_column :users, :are_pictures_public, :are_assets_public
  end
end
