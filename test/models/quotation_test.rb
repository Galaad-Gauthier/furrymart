# == Schema Information
#
# Table name: quotations
#
#  artist_id           :integer
#  artist_rating       :string
#  commissioner_id     :integer
#  commissioner_rating :string
#  created_at          :datetime         not null
#  description         :text
#  id                  :integer          not null, primary key
#  proposal_id         :integer
#  refuse_comment      :string
#  refuse_reason       :string
#  state               :string
#  tos_accepted        :boolean          default(FALSE)
#  updated_at          :datetime         not null
#

require 'test_helper'

class QuotationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
