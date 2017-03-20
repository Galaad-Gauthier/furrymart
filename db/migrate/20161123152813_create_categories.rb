class CreateCategories < ActiveRecord::Migration[5.0]
  
  def change
    create_table :categories do |t|
      t.string :key
      t.timestamps
    end

    add_column :proposals, :category_id, :integer

    %w(
      artwork
      badge
      fursuit
      ych
      refsheet
      stickers
      icons
      comics
      adoptable
      goodies
      other
    ).each do |key|
      Category.find_or_create_by(key: key)
    end

  end

end
