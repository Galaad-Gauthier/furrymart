class CreateDelays < ActiveRecord::Migration[5.0]
  
  OLD_AVERAGE_DELAYS = {
    "Shortly after payment" => "shortly",
    "See description / T-O-S" => "see_description",
    "3 days at most" => "three_days",
    "One week at most" => "one_week",
    "2 weeks at most" => "two_weeks",
    "One month at most" => "one_month",
    "2 months at most" => "two_months",
    "More than 2 months" => "more_than_two_months"
  }

  def up
    create_table :delays do |t|
      t.string :key
      t.timestamps
    end

    add_column :proposals, :delay_id, :integer

    OLD_AVERAGE_DELAYS.values.each{ |key| Delay.find_or_create_by(key: key) }
    
    Proposal.find_each do |proposal|
      proposal.update(delay_id: Delay.find_by_key(OLD_AVERAGE_DELAYS[proposal.average_delay].to_s).try(:id))
    end

    remove_column :proposals, :average_delay
  end

  def down
    add_column :proposals, :average_delay, :string

    Proposal.find_each do |proposal|
      proposal.update(average_delay: proposal.delay.try(:name))
    end
        
    remove_column :proposals, :delay_id, :integer
    drop_table :delays
  end

end