class AddAuthorToAnnouncement < ActiveRecord::Migration[5.0]
  def change
    add_column :announcements, :author, :string
  end
end
