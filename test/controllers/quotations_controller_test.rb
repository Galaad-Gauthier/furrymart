require 'test_helper'

class QuotationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should not show quotation if not signed in" do
    get quotation_path(id: quotations(:one))
    assert_response 302
  end

  test "should not show quotation if not artist or commissioner" do
    sign_in(users(:other))
    get quotation_path(id: quotations(:one))
    assert_response 302
  end

  test "should show quotation if artist" do
    sign_in(users(:artist))
    quotation = quotations(:one)

    get quotation_path(id: quotations(:one))
    assert_response 200

    quotation.accept!

    get quotation_path(id: quotations(:one))
    assert_response 200

    quotation.paid!

    get quotation_path(id: quotations(:one))
    assert_response 200

    quotation.finish!

    get quotation_path(id: quotations(:one))
    assert_response 200
  end

  test "should show quotation if commissioner" do
    sign_in(users(:commissioner))
    quotation = quotations(:one)

    get quotation_path(id: quotations(:one))
    assert_response 200

    quotation.accept!

    get quotation_path(id: quotations(:one))
    assert_response 200

    quotation.paid!

    get quotation_path(id: quotations(:one))
    assert_response 200

    quotation.finish!

    get quotation_path(id: quotations(:one))
    assert_response 200
  end

  test "commissioner can rate artist" do
    sign_in(users(:commissioner))

    quotation = quotations(:one)
    quotation.accept!
    quotation.paid!
    quotation.finish!

    put quotation_rate_artist_url(quotation_id: quotation.id), params: { rating: "very_satisfied" }
    assert_response 302
    assert(quotation.artist.reload.artist_rating > 0)
  end

  test "artist can't rate artist" do
    sign_in(users(:artist))

    quotation = quotations(:one)
    quotation.accept!
    quotation.paid!
    quotation.finish!

    put quotation_rate_artist_url(quotation_id: quotation.id), params: { rating: "very_satisfied" }
    assert_response 302
    assert(quotation.artist.reload.artist_rating == 0.0)
  end

  test "artist can rate commissioner" do
    sign_in(users(:artist))

    quotation = quotations(:one)
    quotation.accept!
    quotation.paid!
    quotation.finish!

    put quotation_rate_commissioner_url(quotation_id: quotation.id), params: { rating: "very_satisfied" }
    assert_response 302
    assert(quotation.commissioner.reload.commissioner_rating > 0)
  end

  test "commissioner can't rate commissioner" do
    sign_in(users(:commissioner))

    quotation = quotations(:one)
    quotation.accept!
    quotation.paid!
    quotation.finish!

    put quotation_rate_commissioner_url(quotation_id: quotation.id), params: { rating: "very_satisfied" }
    assert_response 302
    assert(quotation.commissioner.reload.commissioner_rating == 0.0)
  end

end
