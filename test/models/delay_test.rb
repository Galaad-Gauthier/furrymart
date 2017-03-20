# == Schema Information
#
# Table name: delays
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  key        :string
#  rank       :integer
#  updated_at :datetime         not null
#

require "test_helper"

class DelayTest < ActiveSupport::TestCase
  # let(:delay) { Delay.new }

  # it "must be valid" do
  #   value(delay).must_be :valid?
  # end
end
