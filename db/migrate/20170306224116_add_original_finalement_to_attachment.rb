class AddOriginalFinalementToAttachment < ActiveRecord::Migration[5.0]
  def change
    add_column :attachments, :original_filename, :string
  end
end
