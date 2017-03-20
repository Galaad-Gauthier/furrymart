require 'test_helper'

class Users::ProfilesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should show artist profile to artist" do
    artist = users(:artist)
    sign_in(artist)
    get profile_url(artist)
    assert_response 200
  end

  test "should show artist profile to other" do
    other = users(:other)
    sign_in(other)

    artist = users(:artist)
    get profile_url(artist)
    assert_response 200
  end

  test "should show artist profile to unsigned" do
    artist = users(:artist)
    get profile_url(artist)
    assert_response 200
  end

  test "should show commissioner profile to commissioner" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    get profile_url(commissioner)
    assert_response 200
  end

  test "should show commissioner profile to other" do
    other = users(:other)
    sign_in(other)

    commissioner = users(:commissioner)
    get profile_url(commissioner)
    assert_response 200
  end

  test "should show commissioner profile to unsigned" do
    commissioner = users(:commissioner)
    get profile_url(commissioner)
    assert_response 200
  end

  test "should edit profile" do
    artist = users(:artist)
    sign_in(artist)
    get edit_user_profile_url(user_id: artist.id)
    assert_response 200
  end

  test "should not show edit if other" do
    other = users(:other)
    sign_in(other)
    get edit_user_profile_url(user_id: users(:artist).id)
    assert_response 302
  end

  test "should not show if not signed in" do
    get edit_user_profile_url(user_id: users(:artist).id)
    assert_response 302
  end

  test "should allow update" do
    artist = users(:artist)
    sign_in(artist)

    patch user_profile_url(user_id: artist.id, params: {
      profile: {
        biography: 'new biography'
      }
    })
    assert_equal(artist.profile.biography, 'new biography')
    assert_response 302
  end

  test "should not allow update by others" do
    artist = users(:artist)

    other = users(:other)
    sign_in(other)

    patch user_profile_url(user_id: artist.id, params: {
      profile: {
        biography: 'new biography'
      }
    })
    assert_equal(artist.profile.biography, 'hello')
    assert_response 302
  end

  test "should not allow update by unsigned" do
    artist = users(:artist)

    patch user_profile_url(user_id: artist.id, params: {
      profile: {
        biography: 'new biography'
      }
    })
    assert_equal(artist.profile.biography, 'hello')
    assert_response 302
  end
end
