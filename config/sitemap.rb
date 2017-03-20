# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = ENV["DOMAIN"] ? "https://#{ENV['DOMAIN']}" : "http://localhost:3000"
SitemapGenerator::Sitemap.compress = false

SitemapGenerator::Sitemap.create do
  Proposal.where(visible: true).find_each do |proposal|
    add proposal_path(proposal), :priority => 1, :changefreq => 'daily', :lastmod => proposal.updated_at
  end

  Character.where(visible: true).find_each do |character|
    add character_path(character), :priority => 0.5, :changefreq => 'daily', :lastmod => character.updated_at
  end

  User.find_each do |user|
    add profile_path(user_id: user.slug), :priority => 0.7, :changefreq => 'daily', :lastmod => user.updated_at
  end

  Announcement.find_each do |announcement|
    add announcement_path(announcement), :priority => 0.9, :changefreq => 'monthly', :lastmod => announcement.updated_at
  end

  ['terms-of-service', 'acceptable-content-policy', 'about'].each do |page|
    add page_path(page), :priority => 0.4
  end

  add "/users/sign_in"
end
