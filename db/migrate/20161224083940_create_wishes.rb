class CreateWishes < ActiveRecord::Migration[5.0]
  def change
    create_table :wishes do |t|
      t.references :user
      t.references :proposal
      
      t.timestamps
    end
  end
end
