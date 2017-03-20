require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should show a character" do
    get character_url(characters(:one))
    assert_response :success
  end

  test "should activate" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    character = characters(:invisible)
    put character_activate_url(character_id: character.slug)
    assert_response 204

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 3)

    other = users(:other)
    sign_in(other)

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 3)
  end

  test "others should not activate" do
    commissioner = users(:commissioner)
    other = users(:other)

    sign_in(other)

    character = characters(:invisible)
    put character_activate_url(character_id: character.slug)
    assert_response 302

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 2)
  end

  test "should deactivate" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    character = characters(:one)
    put character_deactivate_url(character_id: character.slug)
    assert_response 204

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 3)

    other = users(:other)
    sign_in(other)

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 1)
  end

  test "others should not deactivate" do
    commissioner = users(:commissioner)
    other = users(:other)

    sign_in(other)

    character = characters(:invisible)
    put character_deactivate_url(character_id: character.slug)
    assert_response 302

    get profile_url(user_id: commissioner.slug)
    assert_select('.character', 2)
  end
end
