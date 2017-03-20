class AddSlugToAnnouncement < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :slug, :string
  end
end
