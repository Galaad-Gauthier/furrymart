require "test_helper"

class MessagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should show conversation" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    get messages_url(recipient_id: artist.id)
    assert_response 200
    assert_select('.message', 2)
  end

  test "should redirect if no recipient" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    get messages_url
    assert_response 200
    assert_select('.message', 2)
  end

  test "should show empty if no messages" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    other = users(:other)

    get messages_url(recipient_id: other.id)
    assert_response 200
    assert_select('.message', 0)
  end

  test "should be okay with empty roster" do
    other = users(:another)
    sign_in(other)

    get messages_url
    assert_response 200
    assert_select('.message', 0)
  end

  test "should not show others conversation" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    other = users(:other)

    get messages_url(recipient_id: other.id)
    assert_response 200
    assert_select('.message', 0)
  end

  test "should create" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    assert_difference("Message.count") do
      post messages_url(recipient_id: artist.id), params: {
        message: {
          sender_id: commissioner.id,
          recipient_id: artist.id,
          body: "test"
        }
      }
    end

    assert_response 302

    get messages_url(recipient_id: artist.id)
    assert_select('.message', 3)
  end

  test "should not allow impersonation" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    assert_no_difference("Message.count") do
      post messages_url(recipient_id: artist.id), params: {
        message: {
          sender_id: users(:other).id,
          recipient_id: artist.id,
          body: "test"
        }
      }
    end

    assert_response 302

    get messages_url(recipient_id: artist.id)
    assert_select('.message', 2)
  end
end
