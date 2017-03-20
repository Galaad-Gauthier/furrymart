require "test_helper"

class Announcements::CommentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "can create" do
    other = users(:other)
    sign_in(other)

    assert_difference("AnnouncementComment.count") do
      post(announcement_comments_url(announcement_id: announcements(:one).slug), params: {
        announcement_comment: {
          sender_id: other.id,
          announcement_id: announcements(:one).id,
          body: "new"
        }
      })
    end

    get announcement_path(id: announcements(:one).id)
    assert_response 200
    assert_select ".announcement", 1
    assert_select ".collection-item.conversation", 3
  end

  test "can not create for other" do
    other = users(:other)
    sign_in(other)

    assert_no_difference("AnnouncementComment.count") do
      post(announcement_comments_url(announcement_id: announcements(:one).slug), params: {
        announcement_comment: {
          sender_id: users(:artist).id,
          announcement_id: announcements(:one).id,
          body: "new"
        }
      })
    end
    assert_response 302

    get announcement_path(id: announcements(:one).id)
    assert_response 200
    assert_select ".announcement", 1
    assert_select ".collection-item.conversation", 2
  end
end
