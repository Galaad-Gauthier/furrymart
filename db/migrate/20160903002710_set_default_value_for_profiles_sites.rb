class SetDefaultValueForProfilesSites < ActiveRecord::Migration[5.0]
  
  def up
    change_column :profiles, :sites, :hstore, default: {}

    Profile.find_each do |profile|
      profile.update_columns(sites: {}) if profile.sites.nil?
    end
  end

  def down
    change_column :profiles, :sites, :hstore

    Profile.find_each do |profile|
      profile.update_columns(sites: nil) if profile.sites.blank?
    end
  end

end
