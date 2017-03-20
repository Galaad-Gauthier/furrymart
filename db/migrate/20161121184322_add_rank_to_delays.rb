class AddRankToDelays < ActiveRecord::Migration[5.0]

  DELAYS_RANKS = {
    "shortly" => 2,
    "see_description" => 1,
    "three_days" => 3,
    "one_week" => 4,
    "two_weeks" => 5,
    "one_month" => 6,
    "two_months" => 7,
    "more_than_two_months" => 8
  }
  
  def change
    add_column :delays, :rank, :integer

    Delay.find_each do |delay|
      delay.update(rank: DELAYS_RANKS[delay.key])
    end
    
    Proposal.__elasticsearch__.create_index! force: true
    Proposal.import
  end

end
