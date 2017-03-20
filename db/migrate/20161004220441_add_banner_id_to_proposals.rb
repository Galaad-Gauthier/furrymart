class AddBannerIdToProposals < ActiveRecord::Migration[5.0]
  def change
    add_reference :proposals, :banner, index: true
  end
end
