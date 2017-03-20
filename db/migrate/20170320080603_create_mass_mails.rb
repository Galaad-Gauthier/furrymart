class CreateMassMails < ActiveRecord::Migration[5.0]
  def change
    create_table :mass_mails do |t|
      t.string :title
      t.text :body
      t.string :recipients

      t.timestamps
    end
  end
end
