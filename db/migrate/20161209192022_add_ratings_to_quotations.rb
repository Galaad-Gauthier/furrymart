class AddRatingsToQuotations < ActiveRecord::Migration[5.0]
  def change
    add_column :quotations, :commissioner_rating, :string
    add_column :quotations, :artist_rating, :string
  end
end
