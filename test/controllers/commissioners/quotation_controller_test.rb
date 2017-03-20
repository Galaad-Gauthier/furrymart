require 'test_helper'

class Commissioners::QuotationControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should show all commissioner quotations" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    get commissioner_quotations_url(commissioner_id: commissioner.slug)
    assert_response 200

    assert_select('.quotation', 3)
  end

  test "should not show quotations if other" do
    other = users(:other)
    sign_in(other)

    get commissioner_quotations_url(commissioner_id: users(:commissioner).slug)
    assert_response 200
    assert_select('.quotation', 0)
  end

  test "can publish and unpublish" do
    commissioner = users(:commissioner)
    other = users(:other)

    sign_in(commissioner)

    get commissioner_quotations_url(commissioner_id: commissioner.slug)
    assert_response 200
    assert_select(".quotation", 3)

    put commissioner_quotation_publish_url(commissioner_id: commissioner.slug, quotation_id: quotations(:one))
    assert_response 204

    get commissioner_quotations_url(commissioner_id: commissioner.slug)
    assert_response 200
    assert_select(".quotation", 3)

    sign_out(commissioner)

    get commissioner_quotations_url(commissioner_id: commissioner.slug)
    assert_response 200
    assert_select(".quotation", 1)

    sign_in(other)

    get commissioner_quotations_url(commissioner_id: commissioner.slug)
    assert_response 200
    assert_select(".quotation", 1)

    sign_out(other)
    sign_in(commissioner)

    put commissioner_quotation_unpublish_url(commissioner_id: commissioner.slug, quotation_id: quotations(:one))
    assert_response 204

    get commissioner_quotations_url(commissioner_id: commissioner.slug)
    assert_response 200
    assert_select(".quotation", 3)

    sign_out(commissioner)

    get commissioner_quotations_url(commissioner_id: commissioner.slug)
    assert_response 200
    assert_select(".quotation", 0)

    sign_in(other)

    get commissioner_quotations_url(commissioner_id: commissioner.slug)
    assert_response 200
    assert_select(".quotation", 0)
  end
end
