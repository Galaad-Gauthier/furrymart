class AddCertifiedSitesToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :certified_sites, :text, array: true, default: []
  end
end
