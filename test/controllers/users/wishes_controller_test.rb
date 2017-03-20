require "test_helper"

class Users::WishesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should create" do
    user = users(:commissioner)
    sign_in(user)

    assert_difference("Wish.count") do
      post user_wishes_url(user_id: user.slug, format: :json), params: {
        wish: {
          proposal_id: proposals(:one).id
        }
      }
    end

    assert_response 200

    get profile_url(user_id: user.slug)
    assert_select('.wish', 1)
  end

  test "should not allow impersonation" do
    user = users(:commissioner)
    sign_in(user)

    assert_no_difference("Wish.count") do
      post user_wishes_url(user_id: users(:artist).slug, format: :json), params: {
        wish: {
          proposal_id: proposals(:one).id
        }
      }
    end

    assert_response 302

    get profile_url(user_id: user.slug)
    assert_select('.wish', 0)
  end

  test "should remove wish" do
    user = users(:commissioner)
    sign_in(user)

    wish = Wish.create(user: user, proposal: proposals(:one))
    assert_difference("Wish.count", -1) do
      delete user_wish_url(user_id: user.slug, id: wish.id, format: :json)
    end

    assert_response 204

    get profile_url(user_id: user.slug)
    assert_select('.wish', 0)
  end

  test "should not allow impersonation on delete" do
    user = users(:commissioner)
    sign_in(user)

    artist = users(:artist)
    wish = Wish.create(user: artist, proposal: proposals(:one))
    assert_no_difference("Wish.count") do
      delete user_wish_url(user_id: artist.slug, id: wish.id, format: :json)
    end

    assert_response 302

    get profile_url(user_id: artist.slug)
    assert_select('.wish', 1)
  end
end
