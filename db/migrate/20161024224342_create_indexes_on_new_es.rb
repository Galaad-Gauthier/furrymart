class CreateIndexesOnNewEs < ActiveRecord::Migration[5.0]
  def up
    Proposal.__elasticsearch__.create_index! force: true
    Proposal.import
  end

  def down
    Proposal.__elasticsearch__.delete_index!
  end
end
