require 'test_helper'

class FeedbacksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should create" do
    commissioner = users(:commissioner)
    sign_in(commissioner)

    assert_difference("Feedback.count") do
      post feedbacks_path(params: {
        feedback: {
          user_id: commissioner.id,
          body: "new quotation description"
        }
      })
    end
    assert_response 302
  end

  test "should create for guest" do
    assert_difference("Feedback.count") do
      post feedbacks_path(params: {
        feedback: {
          body: "new quotation description"
        }
      })
    end
    assert_response 302
  end

  test "can't snoop user id" do
    commissioner = users(:commissioner)

    assert_no_difference("Feedback.count") do
      post feedbacks_path(params: {
        feedback: {
          user_id: commissioner.id,
          body: "new quotation description"
        }
      })
    end
    assert_response 302
  end
end
