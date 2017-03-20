require 'test_helper'

class Proposals::QuotationsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "show new quotation form" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    proposal = proposals(:one)

    get new_proposal_quotation_url(proposal_id: proposal.slug)
    assert_response 200
  end

  test "show not allow not logged in" do
    proposal = proposals(:one)

    get new_proposal_quotation_url(proposal_id: proposal.slug)
    assert_response 302
  end

  test "should create" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    proposal = proposals(:one)

    assert_difference("Quotation.count") do
      post proposal_quotations_url(proposal_id: proposal.slug, params: {
        quotation: {
          proposal_id: proposal.id,
          tos_accepted: true,
          description: "new quotation description",
          commissioner_id: commissioner.id,
          artist_id: proposal.artist.id
        }
      })
    end
    assert_response 302
  end

  test "should not create without description" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    proposal = proposals(:one)

    assert_no_difference("Quotation.count") do
      post proposal_quotations_url(proposal_id: proposal.slug, params: {
        quotation: {
          proposal_id: proposal.id,
          tos_accepted: true,
          description: "",
          commissioner_id: commissioner.id,
          artist_id: proposal.artist.id
        }
      })
    end
    assert_select('#error_explanation', 1)
  end

  test "should not allow unsigned" do
    proposal = proposals(:one)

    assert_no_difference("Quotation.count") do
      post proposal_quotations_url(proposal_id: proposal.slug, params: {
        quotation: {
          proposal_id: proposal.id,
          description: "new quotation description",
          artist_id: proposal.artist.id
        }
      })
    end
    assert_response 302
  end

  test "should not allow wrong artist" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    proposal = proposals(:one)

    assert_no_difference("Quotation.count") do
      post proposal_quotations_url(proposal_id: proposal.slug, params: {
        quotation: {
          proposal_id: proposal.id,
          description: "new quotation description",
          commissioner_id: commissioner.id,
          artist_id: commissioner.id
        }
      })
    end
    assert_response 302
  end

  test "should allow access to edit page" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = quotations(:draft)

    get edit_proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id)
    assert_response 200
  end

  test "should not allow access to edit page if not draft" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = quotations(:one)

    get edit_proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id)
    assert_response 302
  end

  test "should not allow access to edit page to other" do
    commissioner = users(:commissioner)
    other = users(:other)
    sign_in(other)

    quotation = quotations(:draft)

    get edit_proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id)
    assert_response 302
  end

  test "should not allow access to edit page to artist" do
    commissioner = users(:commissioner)
    artist = users(:artist)
    sign_in(artist)

    quotation = quotations(:draft)

    get edit_proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id)
    assert_response 302
  end

  test "should allow update by commissioner" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = quotations(:draft)

    patch proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id, params: {
      quotation: {
        description: 'new description'
      }
    })
    assert_response 302

    assert_equal(quotation.reload.description, "new description")
  end

  test "should allow update by commissioner if not draft" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = quotations(:one)

    patch proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id, params: {
      quotation: {
        description: 'new description'
      }
    })
    assert_response 302
  end

  test "should not allow update if description missing" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = quotations(:draft)

    patch proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id, params: {
      quotation: {
        description: ''
      }
    })
    assert_select('#error_explanation', 1)
  end

  test "should not allow update on state" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = quotations(:draft)

    patch proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id, params: {
      quotation: {
        state: 'waiting_payment'
      }
    })
    assert_response 302

    assert_equal(quotation.reload.state, "draft")
  end

  test "should not allow update by others" do
    commissioner = users(:commissioner)
    other = users(:other)

    sign_in(other)

    quotation = quotations(:draft)

    patch proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id, params: {
      quotation: {
        description: 'new description'
      }
    })
    assert_response 302

    assert_equal(quotation.reload.description, "description")
  end

  test "should allow destroy by commissioner if draft" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = quotations(:draft)

    assert_difference("Quotation.count", -1) do
      delete proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id)
    end
    assert_response 302
  end

  test "shouldnot allow destroy by artist" do
    commissioner = users(:artist)
    sign_in(commissioner)

    quotation = quotations(:draft)

    assert_no_difference("Quotation.count") do
      delete proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id)
    end
    assert_response 302
  end

  test "shouldnot allow destroy by others" do
    commissioner = users(:other)
    sign_in(commissioner)

    quotation = quotations(:draft)

    assert_no_difference("Quotation.count") do
      delete proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id)
    end
    assert_response 302
  end

  test "should not allow destroy by commissioner if not draft" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    quotation = quotations(:one)

    assert_no_difference("Quotation.count") do
      delete proposal_quotation_url(proposal_id: quotation.proposal.slug, id: quotation.id)
    end
    assert_response 302
  end
end
