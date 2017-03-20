require 'test_helper'

class Artists::QuotationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should show all artist quotations" do
    artist = users(:artist)
    sign_in(artist)

    get artist_quotations_url(artist_id: artist.slug)
    assert_response 200

    assert_select('.quotation', 1)
  end

  test "should not show quotations if other" do
    other = users(:other)
    sign_in(other)

    get artist_quotations_url(artist_id: users(:artist).slug)
    assert_response 200
    assert_select('.quotation', 0)
  end

  test "should not show custom quotes form for unsigned" do
    get new_artist_quotation_url(artist_id: users(:artist).slug)
    assert_response 302
  end

  test "should show custom quotes form for commissioners" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    get new_artist_quotation_url(artist_id: users(:artist).slug)
    assert_response 200
  end

  test "can create custom quote" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    assert_difference("Quotation.count") do
      post(artist_quotations_url(artist_id: users(:artist).slug), params: {
        quotation: {
          description: "test",
          tos_accepted: true,
          commissioner_id: commissioner.id,
          artist_id: users(:artist).id
        }
      })
    end
    assert_response 302

    get commissioner_quotations_url(commissioner)
    assert_select('.quotation', 4)
  end

  test "can't create invalid custom quote" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    assert_no_difference("Quotation.count") do
      post(artist_quotations_url(artist_id: users(:artist).slug), params: {
        quotation: {
          tos_accepted: true,
          commissioner_id: commissioner.id,
          artist_id: users(:artist).id
        }
      })
    end
    assert_response 200
    assert_select('#error_explanation', 1)
  end

  test "can create and publish custom quote" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    assert_difference("Quotation.count") do
      post(artist_quotations_url(artist_id: users(:artist).slug), params: {
        quotation: {
          description: "test",
          tos_accepted: true,
          commissioner_id: commissioner.id,
          artist_id: users(:artist).id
        },
        publish: true
      })
    end
    assert_response 302

    get commissioner_quotations_url(commissioner)
    assert_select('.quotation', 4)
  end

  test "can publish custom quote" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })
    put(artist_quotation_url(artist_id: users(:artist).slug, id: quotation.id), params: {
      quotation: {
        description: "lol"
      },
      publish: true
    })
    assert(quotation.reload.waiting_approval?)
  end

  test "can't update invalid custom quote" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })
    put(artist_quotation_url(artist_id: users(:artist).slug, id: quotation.id), params: {
      quotation: {
        description: ""
      },
      publish: true
    })
    assert_response 200
    assert_select('#error_explanation', 1)
    assert(quotation.reload.draft?)
  end

  test "can show custom quotation if commissioner" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })

    get quotation_url(quotation)
    assert_response 200
  end

  test "can not show unpublished custom quotation if artist" do
    artist = users(:artist)
    sign_in(artist)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: users(:commissioner).id,
      artist_id: artist.id
    })

    get quotation_url(quotation)
    assert_response 302
  end

  test "can show published custom quotation if artist" do
    artist = users(:artist)
    sign_in(artist)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: users(:commissioner).id,
      artist_id: artist.id
    })
    quotation.publish!

    get quotation_url(quotation)
    assert_response 200
  end

  test "can not show custom quotation if other" do
    other = users(:other)
    sign_in(other)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: users(:commissioner).id,
      artist_id: users(:artist).id
    })

    get quotation_url(quotation)
    assert_response 302
  end

  test "can update custom quotation if commissioner" do
    commissioner = users(:commissioner)
    artist = users(:artist)
    sign_in(commissioner)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })

    put artist_quotation_url(artist_id: artist.slug, id: quotation.id, params: {
      quotation: {
        description: "updated"
      }
    })
    assert_response 302
    assert_equal(quotation.reload.description, "updated")
  end

  test "can not update custom quotation if commissioner and not draft" do
    commissioner = users(:commissioner)
    artist = users(:artist)
    sign_in(commissioner)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })
    quotation.publish!

    put artist_quotation_url(artist_id: artist.slug, id: quotation.id, params: {
      quotation: {
        description: "updated"
      }
    })
    assert_response 302
    assert_equal(quotation.reload.description, "test")
  end

  test "can not update custom quotation if artist" do
    commissioner = users(:commissioner)
    artist = users(:artist)
    sign_in(artist)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })

    put artist_quotation_url(artist_id: artist.slug, id: quotation.id, params: {
      quotation: {
        description: "updated"
      }
    })
    assert_response 302
    assert_equal(quotation.reload.description, "test")
  end

  test "can not update custom quotation if others" do
    commissioner = users(:commissioner)
    artist = users(:artist)
    sign_in(users(:other))

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })

    put artist_quotation_url(artist_id: artist.slug, id: quotation.id, params: {
      quotation: {
        description: "updated"
      }
    })
    assert_response 302
    assert_equal(quotation.reload.description, "test")
  end

  test "can destroy custom quotation if commissioner" do
    commissioner = users(:commissioner)
    artist = users(:artist)
    sign_in(commissioner)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })

    assert_difference("Quotation.count", -1) do
      delete artist_quotation_url(artist_id: artist.slug, id: quotation.id)
    end
    assert_response 302
  end

  test "can not delete custom quotation if commissioner and not draft" do
    commissioner = users(:commissioner)
    artist = users(:artist)
    sign_in(commissioner)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })
    quotation.publish!

    assert_no_difference("Quotation.count") do
      delete artist_quotation_url(artist_id: artist.slug, id: quotation.id)
    end
    assert_response 302
  end

  test "can not delete custom quotation if artist" do
    commissioner = users(:commissioner)
    artist = users(:artist)
    sign_in(artist)

    quotation = Quotation.create!({
      description: "test",
      tos_accepted: true,
      commissioner_id: commissioner.id,
      artist_id: users(:artist).id
    })
    quotation.publish!

    assert_no_difference("Quotation.count") do
      delete artist_quotation_url(artist_id: artist.slug, id: quotation.id)
    end
    assert_response 302
  end

  test "should allow accept" do
    artist = users(:artist)
    sign_in(artist)

    put quotation_accept_url(quotation_id: artist.quotations_as_artist.first.id)
    assert_response 302

    assert_equal(artist.quotations_as_artist.first.state, "waiting_payment")
  end

  test "should allow refuse" do
    artist = users(:artist)
    sign_in(artist)

    put quotation_refuse_url(quotation_id: artist.quotations_as_artist.first.id, params: {
      quotation: {
        refuse_reason: "other",
        refuse_comment: "test"
      }
    })
    assert_response 302

    assert_equal(artist.quotations_as_artist.first.state, "refused")
    assert_equal(artist.quotations_as_artist.first.refuse_reason, "other")
    assert_equal(artist.quotations_as_artist.first.refuse_comment, "test")
  end

  test "should allow paid" do
    artist = users(:artist)
    sign_in(artist)

    quotation = artist.quotations_as_artist.first
    quotation.accept!
    put quotation_paid_url(quotation_id: quotation.id)
    assert_response 302

    assert_equal(artist.quotations_as_artist.first.state, "paid")
  end

  test "should allow fnish" do
    artist = users(:artist)
    sign_in(artist)

    quotation = artist.quotations_as_artist.first
    quotation.accept!
    quotation.paid!
    put quotation_finish_url(quotation_id: quotation.id)
    assert_response 302

    assert_equal(artist.quotations_as_artist.first.state, "done")
  end

  test "should allow cancel_approval if waiting_payment" do
    artist = users(:artist)
    sign_in(artist)

    quotation = artist.quotations_as_artist.first
    quotation.accept!
    put quotation_cancel_approval_url(quotation_id: quotation.id)
    assert_response 302

    assert_equal(artist.quotations_as_artist.first.state, "waiting_approval")
  end

  test "should allow cancel_approval if other state" do
    artist = users(:artist)
    sign_in(artist)

    quotation = artist.quotations_as_artist.first
    quotation.accept!
    quotation.paid!
    put quotation_cancel_approval_url(quotation_id: quotation.id)
    assert_response 302

    assert_equal(artist.quotations_as_artist.first.state, "paid")
  end

  test "can publish and unpublish" do
    artist = users(:artist)
    other = users(:other)

    sign_in(artist)

    get artist_quotations_url(artist_id: artist.slug)
    assert_response 200
    assert_select(".quotation", 1)

    put artist_quotation_publish_url(artist_id: artist.slug, quotation_id: quotations(:one))
    assert_response 204

    get artist_quotations_url(artist_id: artist.slug)
    assert_response 200
    assert_select(".quotation", 1)

    sign_out(artist)
    sign_in(other)

    get artist_quotations_url(artist_id: artist.slug)
    assert_response 200
    assert_select(".quotation", 1)

    sign_out(other)

    get artist_quotations_url(artist_id: artist.slug)
    assert_response 200
    assert_select(".quotation", 1)

    sign_in(artist)

    put artist_quotation_unpublish_url(artist_id: artist.slug, quotation_id: quotations(:one))
    assert_response 204

    get artist_quotations_url(artist_id: artist.slug)
    assert_response 200
    assert_select(".quotation", 1)

    sign_out(artist)

    get artist_quotations_url(artist_id: artist.slug)
    assert_response 200
    assert_select(".quotation", 0)

    sign_in(other)

    get artist_quotations_url(artist_id: artist.slug)
    assert_response 200
    assert_select(".quotation", 0)
  end

end
