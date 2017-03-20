# == Schema Information
#
# Table name: questions
#
#  body         :text
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  recipient_id :integer
#  response     :text
#  sender_id    :integer
#  updated_at   :datetime         not null
#

require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  test "must be valid" do
    assert(questions(:one).valid?)
  end
end
