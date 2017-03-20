# == Schema Information
#
# Table name: announcements
#
#  author     :string
#  body       :text
#  created_at :datetime         not null
#  draft      :boolean          default(TRUE)
#  id         :integer          not null, primary key
#  slug       :string
#  title      :string
#  updated_at :datetime         not null
#

require "test_helper"

class AnnouncementTest < ActiveSupport::TestCase
end
