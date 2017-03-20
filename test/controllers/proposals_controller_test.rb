require 'test_helper'

class ProposalsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    refresh_proposals
  end

  test "should show all the visible proposals" do
    get proposals_url
    assert_select('.proposal', 4)
    assert_response :success
  end

  test "should show all the visible proposals when signed in" do
    sign_in(users(:artist))

    get proposals_url
    assert_select('.proposal', 4)
    assert_response :success
  end

  test "should show all the visible proposals and not the others" do
    sign_in(users(:commissioner))
    get proposals_url

    assert_select('.proposal', 4)
    assert_response :success
  end

  test "should show a proposal" do
    get proposal_url(proposals(:one))
    assert_response :success
  end

  test "should activate" do
    artist = users(:artist)
    sign_in(artist)

    proposal = proposals(:invisible)
    put proposal_activate_url(proposal_id: proposal.slug)
    assert_response 204

    get profile_url(artist)
    assert_select('.proposal', 3)

    other = users(:other)
    sign_in(other)

    get profile_url(artist)
    assert_select('.proposal', 3)
  end

  test "others should not activate" do
    artist = users(:artist)
    other = users(:other)

    sign_in(other)

    proposal = proposals(:invisible)
    put proposal_activate_url(proposal_id: proposal.slug)
    assert_response 302

    get profile_url(artist)
    assert_select('.proposal', 3)
  end

  test "should deactivate" do
    artist = users(:artist)
    sign_in(artist)

    proposal = proposals(:one)
    put proposal_deactivate_url(proposal_id: proposal.slug)
    assert_response 204

    get profile_url(artist)
    assert_select('.proposal', 3)

    other = users(:other)
    sign_in(other)

    get profile_url(artist)
    assert_select('.proposal', 3)
  end

  test "others should not deactivate" do
    artist = users(:artist)
    other = users(:other)

    sign_in(other)

    proposal = proposals(:invisible)
    put proposal_deactivate_url(proposal_id: proposal.slug)
    assert_response 302

    get profile_url(artist)
    assert_select('.proposal', 3)
  end
end
