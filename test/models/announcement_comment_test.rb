# == Schema Information
#
# Table name: announcement_comments
#
#  announcement_id :integer
#  body            :text
#  created_at      :datetime         not null
#  id              :integer          not null, primary key
#  sender_id       :integer
#  updated_at      :datetime         not null
#

require "test_helper"

class AnnouncementCommentTest < ActiveSupport::TestCase
end
