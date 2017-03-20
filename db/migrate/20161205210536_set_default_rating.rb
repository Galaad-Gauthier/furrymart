class SetDefaultRating < ActiveRecord::Migration[5.0]
  
  def change
    change_column :users, :rating, :integer, default: 0

    User.where(rating: nil).find_each do |user|
      user.update(rating: 0)
    end
  end

end
