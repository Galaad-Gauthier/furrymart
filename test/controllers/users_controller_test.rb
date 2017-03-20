require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "can not list users if unsigned" do
    get users_url(format: :json)
    assert_response 401
  end

  test "can list users if signed in" do
    sign_in(users(:artist))

    get users_url(format: :json)
    assert_equal(JSON.parse(response.body).size, 4)
    assert_response 200
  end

  test "can filter users if signed in" do
    sign_in(users(:artist))

    get users_url(q: "artist", format: :json)
    assert_equal(JSON.parse(response.body).size, 1)
    assert_response 200
  end

  test "can follow if not signed in" do
    commissioner = users(:commissioner)
    artist = users(:artist)

    assert_no_difference(["Follow.count", "ActionMailer::Base.deliveries.size"]) do
      put user_follow_url(user_id: artist.slug)
    end
    assert_response 302
  end

  test "can follow" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    assert_difference(["Follow.count", "ActionMailer::Base.deliveries.size"]) do
      put user_follow_url(user_id: artist.slug)
    end
    assert_response 302
  end

  test "can unfollow" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    commissioner.follow(artist)
    assert_difference("Follow.count", -1) do
      put user_unfollow_url(user_id: artist.slug)
    end
    assert_response 302
  end

  test "can deleted its account" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    delete user_path(commissioner)
    assert_equal(commissioner.reload.is_deleted, true)
    assert_equal(commissioner.reload.active_for_authentication?, false)

    assert_response 302
  end

  test "get all watchers" do
    get user_watching_url(user_id: users(:commissioner).slug)
    assert_response 200
    assert_select(".collection-item", 0)

    get user_watchers_url(user_id: users(:artist).slug)
    assert_response 200
    assert_select(".collection-item", 0)

    users(:commissioner).follow(users(:artist))

    get user_watching_url(user_id: users(:commissioner).slug)
    assert_response 200
    assert_select(".collection-item", 1)

    get user_watchers_url(user_id: users(:artist).slug)
    assert_response 200
    assert_select(".collection-item", 1)
  end
end
