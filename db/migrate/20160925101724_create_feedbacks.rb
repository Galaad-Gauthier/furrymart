class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
      t.references :user
      t.text :body

      t.timestamps
    end
  end
end
