require "test_helper"

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "get show payment settings" do
    sign_in(users(:commissioner))

    get edit_payment_settings_user_registration_url
    assert_response 200
  end

  test "get edit payment settings" do
    sign_in(users(:commissioner))

    put user_registration_url, params: {
      user: {
        vat_number: "updated vat number"
      }
    }
    assert_response 302

    assert_equal(users(:commissioner).reload.vat_number, "updated vat number")
  end
end
