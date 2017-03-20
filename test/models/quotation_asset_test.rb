# == Schema Information
#
# Table name: quotations_pictures
#
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  asset_id   :integer
#  quotation_id :integer
#  updated_at   :datetime         not null
#

require 'test_helper'

class QuotationAssetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
