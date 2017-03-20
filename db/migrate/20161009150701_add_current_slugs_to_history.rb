class AddCurrentSlugsToHistory < ActiveRecord::Migration[5.0]
 
  def change
    User.find_each(&:save!)
    Proposal.find_each(&:save!)
    Character.find_each(&:save!)
  end

end
