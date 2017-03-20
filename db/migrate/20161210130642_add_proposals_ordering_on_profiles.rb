class AddProposalsOrderingOnProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :proposals_order, :integer, array: true, default: []
  end
end
