require "test_helper"

class AttachmentTest < ActiveSupport::TestCase
  test "must be valid" do
    attachment = Attachment.new({
      quotation_comment: quotation_comments(:one),
      file_url: "url"
    })
    assert(attachment.valid?)
  end

  test "must be invalid" do
    attachment = Attachment.new({
      quotation_comment: quotation_comments(:one)
    })
    assert(attachment.invalid?)
  end
end
