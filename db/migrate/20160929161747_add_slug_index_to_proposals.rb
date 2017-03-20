class AddSlugIndexToProposals < ActiveRecord::Migration[5.0]

  def change
    add_index :proposals, :slug

    Proposal.update_all(slug: nil)
    Proposal.find_each(&:save!)
  end

end
