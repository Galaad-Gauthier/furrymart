require 'test_helper'

class Users::CharactersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should show new character form" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    get new_user_character_url(user_id: commissioner.slug)
    assert_response :success
  end

  test "should not show new character form to others" do
    commissioner = users(:commissioner)

    other = users(:other)
    sign_in(other)

    get new_user_character_url(user_id: commissioner.slug)
    assert_response 302
  end

  test "should not show new character form to unsigned" do
    commissioner = users(:commissioner)

    get new_user_character_url(user_id: commissioner.slug)
    assert_response 302
  end

  test "create new visible character" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    assert_difference(["Character.count", "CharacterAsset.count"]) do
      post user_characters_url(user_id: commissioner.slug), params: {
        visible: true,
        character: {
          name: "test",
          species: "test",
          description: 'test',
          visible: true,
          banner_id: assets(:from_commissioner).id,
          character_assets_attributes: [
            { asset_id: assets(:from_commissioner).id }
          ]
        }
      }
    end

    assert_response 302

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 4)

    other = users(:other)
    sign_in(other)

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 3)
  end

  test "create new invisible character" do
    commissioner = users(:commissioner)
    sign_in(commissioner)
    assert_difference(["Character.count", "CharacterAsset.count"]) do
      post user_characters_url(user_id: commissioner.slug), params: {
        invisible: true,
        character: {
          name: "test",
          species: "test",
          description: 'test',
          visible: false,
          banner_id: assets(:from_commissioner).id,
          character_assets_attributes: [
            { asset_id: assets(:from_commissioner).id }
          ]
        }
      }
    end
    assert_response 302

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 4)

    other = users(:other)
    sign_in(other)

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 2)
  end

  test "don't create character with asset it don't own" do
    commissioner = users(:commissioner)
    sign_in(commissioner)
    assert_no_difference(["Character.count", "CharacterAsset.count"]) do
      post user_characters_url(user_id: commissioner.slug), params: {
        invisible: true,
        character: {
          name: "test",
          species: "test",
          description: 'test',
          visible: false,
          banner_id: assets(:from_artist).id,
          character_assets_attributes: [
            { asset_id: assets(:from_commissioner).id }
          ]
        }
      }
    end
    assert_response 302
  end

  test "don't create character with banner it don't own" do
    commissioner = users(:commissioner)
    sign_in(commissioner)
    assert_no_difference(["Character.count", "CharacterAsset.count"]) do
      post user_characters_url(user_id: commissioner.slug), params: {
        invisible: true,
        character: {
          name: "test",
          species: "test",
          description: 'test',
          visible: false,
          character_assets_attributes: [
            { asset_id: assets(:from_artist).id }
          ]
        }
      }
    end
    assert_response 302
  end

  test "should not create invalid character" do
    commissioner = users(:commissioner)
    sign_in(commissioner)
    assert_no_difference("Character.count") do
      post user_characters_url(user_id: commissioner.slug), params: { visible: true, character: { description: '', price: '', delay: nil, visible: true, title: '' } }
    end
    assert_response 200
    assert_select('#error_explanation', 1)

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 3)
  end

  test "should show edit character form" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    get edit_user_character_url(user_id: commissioner.slug, id: commissioner.characters.first.slug)
    assert_response :success
  end

  test "should not show edit character form to others" do
    commissioner = users(:commissioner)

    other = users(:other)
    sign_in(other)

    get edit_user_character_url(user_id: commissioner.slug, id: commissioner.characters.first.slug)
    assert_response 302
  end

  test "should not show edit character form to unsigned" do
    commissioner = users(:commissioner)

    get edit_user_character_url(user_id: commissioner.slug, id: commissioner.characters.first.slug)
    assert_response 302
  end

  test "should allow update" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    character = commissioner.characters.first
    patch user_character_url(user_id: commissioner.slug, id: character.slug, params: {
      character: {
        name: "test",
        species: "test",
        description: 'new description',
        visible: false
      }
    })

    assert_response 302

    assert_equal(character.reload.visible, false)
    assert_equal(character.reload.description, "new description")
  end

  test "should not allow invalid update" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    character = commissioner.characters.first
    updated_at = character.updated_at

    patch user_character_url(user_id: commissioner.slug, id: character.slug, params: {
      invisible: true,
      character: {
        name: nil,
      }
    })
    assert_response 200
    assert_select('#error_explanation', 1)
  end

  test "should not allow update from others" do
    commissioner = users(:commissioner)

    other = users(:other)
    sign_in(other)

    character = commissioner.characters.first
    updated_at = character.updated_at

    patch user_character_url(user_id: commissioner.slug, id: character.slug, params: {
      invisible: true,
      character: {
        name: "test",
        species: "test",
        description: 'new description',
        visible: false
      }
    })
    assert_response 302

    assert_equal(commissioner.characters.first.reload.updated_at, updated_at)
  end

  test "should allow destroy" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    character = commissioner.characters.first
    assert_no_difference("Character.count") do
      delete user_character_url(user_id: commissioner.slug, id: character.slug)
    end
    assert_equal(character.reload.is_deleted, true)
    assert_response 302
  end

  test "should not allow destroy from others" do
    commissioner = users(:commissioner)

    other = users(:other)
    sign_in(other)

    character = commissioner.characters.first
    assert_no_difference("Character.count") do
      delete user_character_url(user_id: commissioner.slug, id: character.slug)
    end
    assert_equal(character.reload.is_deleted, false)
    assert_response 302
  end

  test "should not allow destroy from unsigned" do
    commissioner = users(:commissioner)

    other = users(:other)
    sign_in(other)

    character = commissioner.characters.first
    assert_no_difference("Character.count") do
      delete user_character_url(user_id: commissioner.slug, id: commissioner.characters.first.slug)
    end
    assert_equal(character.reload.is_deleted, false)
    assert_response 302
  end
end
