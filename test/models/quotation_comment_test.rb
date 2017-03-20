# == Schema Information
#
# Table name: quotation_comments
#
#  attachment   :string
#  body         :text
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  quotation_id :integer
#  sender_id    :integer
#  updated_at   :datetime         not null
#

require 'test_helper'

class QuotationCommentTest < ActiveSupport::TestCase
  test "valid" do
    assert(QuotationComment.new({
      quotation: quotations(:one),
      body: "test"
    }).valid?)
  end

  test "invalid" do
    assert(QuotationComment.new({
      quotation: quotations(:one)
    }).invalid?)
  end

  test "valid with attachment" do
    assert(QuotationComment.new({
      quotation: quotations(:one),
      attachments_attributes: [
        { file_url: "url" }
      ]
    }).valid?)
  end
end
