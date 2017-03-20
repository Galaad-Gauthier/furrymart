require "test_helper"

class AnnouncementsControllerTest < ActionDispatch::IntegrationTest
  test "can list announcements" do
    get announcements_path
    assert_response 200
    assert_select ".announcement", 2
  end

  test "can show announcement" do
    get announcement_path(id: announcements(:one).id)
    assert_response 200
    assert_select ".announcement", 1
  end

  test "can't show draft" do
    get announcement_path(id: announcements(:unpublished).id)
    assert_response 302
  end
end
