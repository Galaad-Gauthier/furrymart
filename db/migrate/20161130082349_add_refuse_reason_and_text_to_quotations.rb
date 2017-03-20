class AddRefuseReasonAndTextToQuotations < ActiveRecord::Migration[5.0]
  def change
    add_column :quotations, :refuse_reason, :string
    add_column :quotations, :refuse_comment, :string
  end
end
