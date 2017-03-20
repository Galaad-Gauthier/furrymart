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
#  is_invoiceable   :boolean          default(FALSE)
#  proposals_order  :integer          default([]), is an Array
#  sites            :hstore           default({})
#  updated_at       :datetime         not null
#  user_id          :integer
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  test "valid" do
    profile = Profile.create({
      user: users(:artist)
    })
    assert(profile.valid?)
  end

  test "can fix sites" do
    sites = {
      "furaffinity" => "https://furaffinity.net/user/blah",
      "inkbunny" => "https://inkbunny.net/blah",
      "sofurry" => "https://blah.sofurry.com",
      "weasyl" => "https://weasyl.com/~blah",
      "twitter" => "https://twitter.com/blah",
      "deviantart" => "https://blah.deviantart.com",
      "tumblr" => "https://blah.tumblr.com"
    }
    sites.each do |site, url|
      profile = Profile.create({
        user: users(:artist)
      })

      profile.send("#{site}=", url)
      profile.save!
      assert_equal(profile.send(site), "blah")
    end
    assert_enqueued_jobs sites.count
  end
end
