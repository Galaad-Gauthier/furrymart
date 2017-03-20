class CreateAttachments < ActiveRecord::Migration[5.0]
  def change
    create_table :attachments do |t|
      t.string :file_url
      t.references :quotation_comment

      t.timestamps
    end

    QuotationComment.where.not(s3_attachment_url: nil).find_each do |comment|
      Attachment.create!(quotation_comment: comment, file_url: comment.s3_attachment_url)
    end
  end
end
