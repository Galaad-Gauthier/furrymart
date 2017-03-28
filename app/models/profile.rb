# == Schema Information
#
# Table name: profiles
#
#  avatar           :string
#  biography        :text
#  certified_sites  :text             default([]), is an Array
#  characters_order :integer          default([]), is an Array
#  created_at       :datetime         not null
#  id               :integer          not null, primary key
#  proposals_order  :integer          default([]), is an Array
#  sites            :hstore           default({})
#  updated_at       :datetime         not null
#  user_id          :integer
#

class Profile < ApplicationRecord

### Model Config ###

### Modules ###

  include Picturable
  picture_fields({ avatar: [:s3_avatar_url, :default_avatar, :file_name] })

### Constants ###

  SITES = %w(
    furaffinity
    inkbunny
    weasyl
    sofurry
    furrynetwork
    commissio
    twitter
    deviantart
    patreon
    tumblr
  )

  CERTIFIABLE_SITES = %w(
    furaffinity
    inkbunny
    weasyl
    sofurry
    twitter
    deviantart
    patreon
  )

### Associations ###

  belongs_to :user, touch: true

### Macros ###

  store_accessor :sites, SITES

## Scopes ###

### Validations ###

  validates :biography, length: { maximum: 50000 }

  SITES.each do |site|
    validates site, length: { maximum: 300 }
  end

### Callbacks ###

  before_save :fix_sites, if: Proc.new{ |profile| profile.changes["sites"] }
  before_save :certify_accounts

### State machines ###

### Class methods ###

### Instance Methods ###

  def fix_sites
    regexps = {
      "furaffinity" => /furaffinity\.net\/user\/([\w|\-|\_|\&]*)/,
      "inkbunny" => /inkbunny\.net\/([\w|\-|\_|\&]*)/,
      "commissio" => /commiss\.io\/([\w|\-|\_|\&]*)/,
      "furrynetwork" => /furrynetwork\.com\/([\w|\-|\_|\&]*)/,
      "sofurry" => /([\w|\-|\_|\&]*)\.sofurry\.com/,
      "weasyl" => /weasyl\.com\/\~([\w|\-|\_|\&]*)/,
      "twitter" => /twitter\.com\/([\w|\-|\_|\&]*)/,
      "deviantart" => /([\w|\-|\_|\&]*)\.deviantart\.com/,
      "tumblr" => /([\w|\-|\_|\&]*)\.tumblr\.com/,
      "patreon" => /patreon\.com\/user\/creators?u=\/([\w|\-|\_|\&]*)/
    }

    new_sites = {}

    SITES.each do |site|
      new_sites[site] = regexps[site].match(sites[site]).try(:[], 1) || sites[site]
    end

    self.sites = new_sites
  end

  def certify_accounts
    sites.each do |site, username|
      if sites_was[site] != username
        self.certified_sites = (user.profile.certified_sites - [ site ])
      end

      if username.present? && !self.certified_sites.include?(site)
        CertifyAccountJob.perform_later(self, site, username)
      end
    end
  end

  def generate_verification_code_for(site)
    Digest::SHA1.hexdigest("#{id}#{site}#{Rails.application.secrets.secret_key_base}")[0..7]
  end

  def default_avatar
    ActionController::Base.helpers.image_url('default-avatar.png')
  end

  def file_name
    [user.name, id]
  end

end
