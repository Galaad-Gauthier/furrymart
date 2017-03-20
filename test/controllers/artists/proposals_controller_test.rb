require 'test_helper'

class Artists::ProposalsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should show new proposal form" do
    artist = users(:artist)
    sign_in(artist)

    get new_artist_proposal_url(artist_id: artist.slug)
    assert_response :success
  end

  test "should not show new proposal form to others" do
    artist = users(:artist)

    other = users(:other)
    sign_in(other)

    get new_artist_proposal_url(artist_id: artist.slug)
    assert_response 302
  end

  test "should not show new proposal form to unsigned" do
    artist = users(:artist)

    get new_artist_proposal_url(artist_id: artist.slug)
    assert_response 302
  end


  test "should show duplicate proposal form" do
    artist = users(:artist)
    sign_in(artist)

    get artist_proposal_duplicate_path(artist_id: artist.slug, proposal_id: proposals(:one).slug)
    assert_response :success
  end

  test "should not show duplicate proposal form to others" do
    artist = users(:artist)

    other = users(:other)
    sign_in(other)

    get artist_proposal_duplicate_path(artist_id: artist.slug, proposal_id: proposals(:one).slug)
    assert_response 302
  end

  test "should not show duplicate proposal form to unsigned" do
    artist = users(:artist)

    get artist_proposal_duplicate_path(artist_id: artist.slug, proposal_id: proposals(:one).slug)
    assert_response 302
  end

  test "create new visible proposal" do
    artist = users(:artist)
    sign_in(artist)

    assert_difference(["Proposal.count", "ProposalAsset.count"]) do
      post artist_proposals_url(artist_id: artist.slug), params: {
        visible: true,
        proposal: {
          description: 'test',
          price: 42,
          delay: delays(:one),
          currency_uid: 'EUR',
          visible: true,
          title: "test",
          delay_id: delays(:one).id,
          category_id: categories(:artwork).id,
          style_id: styles(:digital_bw).id,
          proposal_assets_attributes: [
            { asset_id: assets(:from_artist).id }
          ]
        }
      }
    end

    assert_response 302

    refresh_proposals
    get proposals_url
    assert_select('.proposal', 5)
  end

  test "create new invisible proposal" do
    artist = users(:artist)
    sign_in(artist)
    assert_difference(["Proposal.count", "ProposalAsset.count"]) do
      post artist_proposals_url(artist_id: artist.slug), params: {
        invisible: true,
        proposal: {
          description: 'test',
          price: 42,
          delay: delays(:one),
          visible: false,
          currency_uid: "EUR",
          title: "test",
          delay_id: delays(:one).id,
          category_id: categories(:artwork).id,
          style_id: styles(:digital_bw).id,
          banner_id: assets(:from_artist).id,
          proposal_assets_attributes: [
            { asset_id: assets(:from_artist).id }
          ]
        }
      }
    end
    assert_response 302

    refresh_proposals
    get proposals_url
    assert_select('.proposal', 5)
  end

  test "should not create proposal with asset we don't own" do
    artist = users(:artist)
    sign_in(artist)
    assert_no_difference(["Proposal.count", "ProposalAsset.count"]) do
      post artist_proposals_url(artist_id: artist.slug), params: {
        invisible: true,
        proposal: {
          description: 'test',
          price: 42,
          delay: delays(:one),
          visible: false,
          currency_uid: "EUR",
          title: "test",
          delay_id: delays(:one).id,
          category_id: categories(:artwork).id,
          style_id: styles(:digital_bw).id,
          banner_id: assets(:from_artist).id,
          proposal_assets_attributes: [
            { asset_id: assets(:from_commissioner).id }
          ]
        }
      }
    end
    assert_response 302
  end

  test "should not create proposal with banner we don't own" do
    artist = users(:artist)
    sign_in(artist)
    assert_no_difference(["Proposal.count", "ProposalAsset.count"]) do
      post artist_proposals_url(artist_id: artist.slug), params: {
        invisible: true,
        proposal: {
          description: 'test',
          price: 42,
          delay: delays(:one),
          visible: false,
          currency_uid: "EUR",
          title: "test",
          delay_id: delays(:one).id,
          category_id: categories(:artwork).id,
          style_id: styles(:digital_bw).id,
          banner_id: assets(:from_commissioner).id,
          proposal_assets_attributes: [
            { asset_id: assets(:from_artist).id }
          ]
        }
      }
    end
    assert_response 302
  end

  test "should not create invalid proposal" do
    artist = users(:artist)
    sign_in(artist)
    assert_no_difference("Proposal.count") do
      post artist_proposals_url(artist_id: artist.slug), params: { visible: true, proposal: { description: '', price: '', delay: nil, visible: true, title: '' } }
    end
    assert_response 200
    assert_select('#error_explanation', 1)

    refresh_proposals
    get proposals_url
    assert_select('.proposal', 4)
  end

  test "should show edit proposal form" do
    artist = users(:artist)
    sign_in(artist)

    get edit_artist_proposal_url(artist_id: artist.slug, id: artist.proposals.first.slug)
    assert_response :success
  end

  test "should not show edit proposal form to others" do
    artist = users(:artist)

    other = users(:other)
    sign_in(other)

    get edit_artist_proposal_url(artist_id: artist.slug, id: artist.proposals.first.slug)
    assert_response 302
  end

  test "should not show edit proposal form to unsigned" do
    artist = users(:artist)

    get edit_artist_proposal_url(artist_id: artist.slug, id: artist.proposals.first.slug)
    assert_response 302
  end

  test "should allow update" do
    artist = users(:artist)
    sign_in(artist)

    proposal = artist.proposals.first
    patch artist_proposal_url(artist_id: artist.slug, id: proposal.slug, params: {
      proposal: {
        description: 'new description',
        price: 43,
        currency_uid: "USD",
        visible: false,
        delay_id: delays(:one).id,
        category_id: categories(:artwork).id,
        style_id: styles(:digital_bw).id
      }
    })

    assert_response 302

    assert_equal(proposal.reload.visible, false)
    assert_equal(proposal.reload.description, "new description")
    assert_equal(proposal.reload.price, 43)
    assert_equal(proposal.reload.delay, delays(:one))
    assert_equal(proposal.reload.currency_uid, "USD")
    assert_equal(proposal.reload.currency, Currency.find_by_uid("USD"))
  end

  test "should not allow invalid update" do
    artist = users(:artist)
    sign_in(artist)

    proposal = artist.proposals.first
    updated_at = proposal.updated_at

    patch artist_proposal_url(artist_id: artist.slug, id: proposal.slug, params: {
      invisible: true,
      proposal: {
        description: '',
        price: '',
        delay: nil
      }
    })
    assert_response 200
    assert_select('#error_explanation', 1)
  end

  test "should not allow update from others" do
    artist = users(:artist)

    other = users(:other)
    sign_in(other)

    proposal = artist.proposals.first
    updated_at = proposal.updated_at

    patch artist_proposal_url(artist_id: artist.slug, id: proposal.slug, params: {
      invisible: true,
      proposal: {
        description: 'new description',
        price: '43',
        delay: delays(:one),
        delay_id: delays(:one).id,
        category_id: categories(:artwork).id,
        style_id: styles(:digital_bw).id
      }
    })
    assert_response 302

    assert_equal(artist.proposals.first.reload.updated_at, updated_at)
  end

  test "should allow destroy" do
    artist = users(:artist)
    sign_in(artist)

    proposal = artist.proposals.first
    assert_no_difference("Proposal.count") do
      delete artist_proposal_url(artist_id: artist.slug, id: proposal.slug)
    end
    assert_equal(proposal.reload.is_deleted, true)
    assert_response 302
  end

  test "should not allow destroy from others" do
    artist = users(:artist)

    other = users(:other)
    sign_in(other)

    proposal = artist.proposals.first
    assert_no_difference("Proposal.count") do
      delete artist_proposal_url(artist_id: artist.slug, id: proposal.slug)
    end
    assert_equal(proposal.reload.is_deleted, false)
    assert_response 302
  end

  test "should not allow destroy from unsigned" do
    artist = users(:artist)

    other = users(:other)
    sign_in(other)

    proposal = artist.proposals.first
    assert_no_difference("Proposal.count") do
      delete artist_proposal_url(artist_id: artist.slug, id: artist.proposals.first.slug)
    end
    assert_equal(proposal.reload.is_deleted, false)
    assert_response 302
  end
end
