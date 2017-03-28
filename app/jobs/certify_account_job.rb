class CertifyAccountJob < ApplicationJob
  queue_as :default

  PROFILE_PATHS = {
    "furaffinity" => [
      '.maintable'
    ],
    "sofurry" => [
      '#sf-section-1'
    ],
    "inkbunny" => [
      '.elephant_white'
    ],
    "weasyl" => [
      '#user-profile'
    ],
    "commissio" => [
      '.profile-info'
    ],
    "deviantart" => [
      '#aboutme-info'
    ],
    "twitter" => [
      '.ProfileHeaderCard'
    ],
    "patreon" => [
      'body'
    ]
  }

  def perform(profile, site, username)
    body = open(I18n.t("sites.url.#{site}", username: URI.encode(username))).read
    document = Nokogiri::HTML(body)

    PROFILE_PATHS[site].each do |path|
      if document.css(path).to_s.match(profile.generate_verification_code_for(site))
        profile.update(certified_sites: profile.certified_sites.push(site).uniq)
      end
    end
  rescue => e
  end
end
