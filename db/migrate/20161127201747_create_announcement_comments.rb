class CreateAnnouncementComments < ActiveRecord::Migration[5.0]
  def change
    create_table :announcement_comments do |t|
      t.references :announcement
      t.references :sender
      t.text :body
      t.timestamps
    end
  end
end
