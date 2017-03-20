require 'test_helper'

class Users::AssetsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should show all the non-deleted pictures" do
    sign_in(users(:commissioner))
    get user_assets_url(user_id: users(:commissioner).slug)
    assert_select('.asset', 1)
    assert_response :success
  end

  test "should show nothing to others" do
    get user_assets_url(user_id: users(:commissioner).slug)
    assert_select('.asset', 0)
    assert_response :success

    sign_in(users(:artist))
    get user_assets_url(user_id: users(:commissioner).slug)
    assert_select('.asset', 0)
    assert_response :success
  end

  test "should show if gallery is public" do
    commissioner = users(:commissioner)
    commissioner.update(are_assets_public: true)

    get user_assets_url(user_id: users(:commissioner).slug)
    assert_select('.asset', 1)
    assert_response :success

    sign_in(users(:artist))
    get user_assets_url(user_id: users(:commissioner).slug)
    assert_select('.asset', 1)
    assert_response :success
  end

  test "can create asset" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    assert_difference("Asset.count") do
      post(user_assets_url(user_id: commissioner.slug), params: {
        asset: {
          user_id: commissioner.id,
          s3_file_url: "url",
          description: "test"
        }
      })
    end
    assert_response 302

    get user_assets_url(user_id: commissioner.slug)
    assert_select('.asset', 2)
    assert_response :success
  end

  test "can't create asset if invalid" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    assert_no_difference("Asset.count") do
      post(user_assets_url(user_id: commissioner.slug), params: {
        asset: {
          user_id: commissioner.id,
          description: "test"
        }
      })
    end
    assert_response 302

    get user_assets_url(user_id: commissioner.slug)
    assert_select('.asset', 1)
    assert_response :success
  end

  test "can't create asset for other" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    assert_no_difference("Asset.count") do
      post(user_assets_url(user_id: commissioner.slug), params: {
        asset: {
          user_id: users(:artist).id,
          s3_file_url: "url",
          description: "test"
        }
      })
    end
    assert_response 302

    get user_assets_url(user_id: commissioner.slug)
    assert_select('.asset', 1)
    assert_response :success
  end

  test "can update asset" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    put(user_asset_url(user_id: commissioner.slug, id: assets(:from_commissioner).id), params: {
      asset: {
        description: "updated"
      }
    })
    assert_response 302
    assert_equal(assets(:from_commissioner).reload.description, "updated")
  end

  test "cannot update others asset" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    put(user_asset_url(user_id: commissioner.slug, id: assets(:from_artist).id), params: {
      asset: {
        description: "updated"
      }
    })
    assert_response 302
    assert_equal(assets(:from_artist).reload.description, "original")
  end

  test "can make nsfw" do
    commissioner = users(:commissioner)
    commissioner.update(are_assets_public: true)

    get user_assets_url(user_id: users(:commissioner).slug)
    assert_select('.asset', 1)
    assert_response :success

    sign_in(commissioner)

    put(user_asset_url(user_id: commissioner.slug, id: assets(:from_commissioner).id), params: {
      asset: {
        is_adult_content: true
      }
    })
    assert_response 302

    sign_out(commissioner)

    get user_assets_url(user_id: users(:commissioner).slug)
    assert_select('.asset', 0)
    assert_response :success
  end

  test "can destroy asset" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    delete user_asset_url(user_id: commissioner.slug, id: assets(:from_commissioner).id)
    assert_response 302

    get user_assets_url(user_id: commissioner.slug)
    assert_select('.asset', 0)
    assert_response :success

    assert_equal(assets(:from_commissioner).reload.is_deleted, true)
  end

  test "cannot destroy others asset" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    delete user_asset_url(user_id: commissioner.slug, id: assets(:from_artist).id)
    assert_response 302

    users(:artist).update(are_assets_public: true)
    get user_assets_url(user_id: users(:artist).slug)
    assert_select('.asset', 1)
    assert_response :success

    assert_equal(assets(:from_artist).reload.is_deleted, false)
  end
end
