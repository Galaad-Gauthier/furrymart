# == Schema Information
#
# Table name: reports
#
#  attachment  :string
#  body        :text
#  created_at  :datetime         not null
#  id          :integer          not null, primary key
#  reporter_id :integer
#  updated_at  :datetime         not null
#  user_id     :integer
#

require "test_helper"

class ReportTest < ActiveSupport::TestCase
  test "must be valid" do
    assert(reports(:one).valid?)
  end
end
