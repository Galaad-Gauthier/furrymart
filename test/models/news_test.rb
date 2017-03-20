require "test_helper"

class NewsTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  test "must be valid" do
    news = News.new(body: "test")
    assert(news.valid?)
  end

  test "must be invalid" do
    news = News.new
    assert(news.invalid?)
  end

  test "must notify" do
    assert_difference("PublicActivity::Activity.count", User.count) do
      News.create(body: "test")
    end
  end
end
