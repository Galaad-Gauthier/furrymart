class AddRatingsOnUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rating, :integer
    User.update_all(rating: 0)
  end
end
