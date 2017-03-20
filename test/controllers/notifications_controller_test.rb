require 'test_helper'

class NotificationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should allow index" do
    get notifications_url
    assert_response :success
  end
end
