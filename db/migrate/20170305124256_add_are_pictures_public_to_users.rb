class AddArePicturesPublicToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :are_pictures_public, :bool, default: false
  end
end
