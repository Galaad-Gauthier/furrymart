class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.references :user
      t.references :reporter
      t.text :body
      t.string :attachment

      t.timestamps
    end
  end
end
