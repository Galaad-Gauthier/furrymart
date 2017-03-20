class AddS3FileUrls < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :s3_file_url, :string
    add_column :profiles, :s3_avatar_url, :string
    add_column :quotation_comments, :s3_attachment_url, :string
  end
end
