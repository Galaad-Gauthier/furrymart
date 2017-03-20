class AddDraftToNews < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :draft, :boolean, default: true
  end
end
