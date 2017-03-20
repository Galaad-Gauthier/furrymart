require "test_helper"

class Users::QuestionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should create" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    assert_difference("Question.count") do
      post user_questions_url(user_id: artist.slug), params: {
        question: {
          sender_id: commissioner.id,
          body: "test"
        }
      }
    end

    assert_response 302

    get profile_url(user_id: artist.slug)
    assert_select('.question', 3)
  end

  test "should not allow impersonation" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    assert_no_difference("Question.count") do
      post user_questions_url(user_id: artist.slug), params: {
        question: {
          sender_id: users(:other).id,
          body: "test"
        }
      }
    end

    assert_response 302

    get profile_url(user_id: artist.slug)
    assert_select('.question', 2)
  end

  test "should not allow answer to other" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    artist = users(:artist)

    put user_question_url(user_id: artist.slug, id: questions(:one).id), params: {
      question: {
        response: "response"
      }
    }

    assert_response 302

    get profile_url(user_id: artist.slug)
    assert_select('.response', 1)
  end

  test "should allow answer to artist" do
    artist = users(:artist)
    sign_in(artist)

    put user_question_url(user_id: artist.slug, id: questions(:one).id), params: {
      question: {
        response: "response"
      }
    }

    assert_response 302

    get profile_url(user_id: artist.slug)
    assert_select('.response', 2)
  end
end
