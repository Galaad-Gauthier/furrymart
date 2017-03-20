class RemoveRecipientFromQuotationComment < ActiveRecord::Migration[5.0]
  def change
    remove_column :quotation_comments, :recipient_id
  end
end
