require "test_helper"

class Users::ReportsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should create" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    assert_difference("Report.count") do
      post user_reports_url(user_id: artist.slug), params: {
        report: {
          reporter_id: commissioner.id,
          body: "test"
        }
      }
    end

    assert_response 302
  end

  test "should not allow impersonation" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    assert_no_difference("Report.count") do
      post user_reports_url(user_id: artist.slug), params: {
        report: {
          reporter_id: users(:other).id,
          body: "test"
        }
      }
    end

    assert_response 302
  end

end
