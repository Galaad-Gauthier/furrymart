class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :sender, index: true
      t.references :recipient, index: true
      t.text :body
      t.text :response

      t.timestamps
    end
  end
end
