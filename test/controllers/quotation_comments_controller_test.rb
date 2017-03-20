require 'test_helper'

class QuotationCommentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  def file
    "https://lol.com/test.jpg"
  end

  test "should allow comment from the artist" do
    artist = users(:artist)
    sign_in artist

    assert_difference(["QuotationComment.count", "Attachment.count", "ActionMailer::Base.deliveries.size"]) do
      post(quotation_comments_url, params: {
        quotation_comment: {
          quotation_id: artist.quotations_as_artist.first.id,
          body: 'test',
          attachments_attributes: [
            { file_url: file }
          ]
        }
      })
    end
    assert_response 302
  end

  test "should allow comment from the commissioner" do
    commissioner = users(:commissioner)
    sign_in commissioner

    assert_difference(["QuotationComment.count", "Attachment.count", "ActionMailer::Base.deliveries.size"]) do
      post(quotation_comments_url, params: {
        quotation_comment: {
          quotation_id: commissioner.quotations_as_commissioner.first.id,
          body: 'test',
          attachments_attributes: [
            { file_url: file }
          ]
        }
      })
    end
    assert_response 302
  end

  test "should not allow comments from others as artist" do
    other = users(:other)
    artist = users(:artist)

    sign_in other

    assert_no_difference(["QuotationComment.count", "Attachment.count", "ActionMailer::Base.deliveries.size"]) do
      post(quotation_comments_url, params: {
        quotation_comment: {
          quotation_id: artist.quotations_as_artist.first.id,
          body: 'test',
          attachments_attributes: [
            { file_url: file }
          ]
        }
      })
    end
    assert_response 302
  end

  test "should not allow comments from others as commissioner" do
    other = users(:other)
    commissioner = users(:commissioner)

    sign_in other

    assert_no_difference(["QuotationComment.count", "Attachment.count", "ActionMailer::Base.deliveries.size"]) do
      post(quotation_comments_url, params: {
        quotation_comment: {
          quotation_id: commissioner.quotations_as_commissioner.first.id,
          body: 'test',
          attachments_attributes: [
            { file_url: file }
          ]
        }
      })
    end
    assert_response 302
  end

  test "should not save if invalid" do
    artist = users(:artist)
    sign_in artist

    assert_no_difference(["QuotationComment.count", "Attachment.count", "ActionMailer::Base.deliveries.size"]) do
      post quotation_comments_url, params: { quotation_comment: { quotation_id: artist.quotations_as_artist.first.id, body: nil } }
    end
    assert_no_difference(["QuotationComment.count", "Attachment.count", "ActionMailer::Base.deliveries.size"]) do
      post quotation_comments_url, params: { quotation_comment: { quotation_id: artist.quotations_as_artist.first.id } }
    end
  end

  test "should allow empty body if file is present" do
    artist = users(:artist)
    sign_in artist

    assert_difference(["QuotationComment.count", "Attachment.count", "ActionMailer::Base.deliveries.size"]) do
      post(quotation_comments_url, params: {
        quotation_comment: {
          quotation_id: artist.quotations_as_artist.first.id,
          body: nil,
          attachments_attributes: [
            { file_url: file }
          ]
        }
      })
    end
    assert_response 302
  end

  test "should allow invoices" do
    artist = users(:artist)
    sign_in artist

    assert_difference(["QuotationComment.count", "Attachment.count", "ActionMailer::Base.deliveries.size"]) do
      post(quotation_comments_url, params: {
        quotation_comment: {
          quotation_id: artist.quotations_as_artist.first.id,
          body: nil,
          attachments_attributes: [
            { file_url: file, subject_id: invoices(:one).id, subject_type: "Invoice" }
          ]
        }
      })
    end
    assert_response 302
  end

  test "should not allow allow attachment subject that isn't owned by the sender" do
    artist = users(:artist)
    sign_in artist

    assert_no_difference(["QuotationComment.count", "Attachment.count", "ActionMailer::Base.deliveries.size"]) do
      post(quotation_comments_url, params: {
        quotation_comment: {
          quotation_id: artist.quotations_as_artist.first.id,
          body: nil,
          attachments_attributes: [
            { file_url: file, subject_id: invoices(:other).id, subject_type: "Invoice" }
          ]
        }
      })
    end
    assert_response 302
  end
end
