class News < ApplicationRecord
  include PublicActivity::Model

  validates :body, presence: true
  after_create do
    User.find_each do |user|
      self.create_activity key: "news.create", recipient: user
    end
  end
end
