class AddBannerIdToCharacters < ActiveRecord::Migration[5.0]
  def change
    add_reference :characters, :banner, index: true
  end
end
