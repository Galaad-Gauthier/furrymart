class AddPublicFlagsOnQuotations < ActiveRecord::Migration[5.0]
  def change
    add_column :quotations, :public_for_artist, :boolean, default: false
    add_column :quotations, :public_for_commissioner, :boolean, default: false
  end
end
