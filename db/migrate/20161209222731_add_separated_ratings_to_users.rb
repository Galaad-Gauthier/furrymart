class AddSeparatedRatingsToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :rating, :artist_rating
    change_column :users, :artist_rating, :float, default: 0.0

    add_column :users, :commissioner_rating, :float, default: 0.0
  end
end
