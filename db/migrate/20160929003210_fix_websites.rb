class FixWebsites < ActiveRecord::Migration[5.0]
 
  def change
    Profile.find_each do |profile|
      profile.fix_sites
      profile.save!
    end
  end

end
