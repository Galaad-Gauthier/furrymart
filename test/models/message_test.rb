# == Schema Information
#
# Table name: messages
#
#  body         :text
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  read         :boolean          default(FALSE)
#  recipient_id :integer
#  sender_id    :integer
#  updated_at   :datetime         not null
#

require "test_helper"

class MessageTest < ActiveSupport::TestCase
end
