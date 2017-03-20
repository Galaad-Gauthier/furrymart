class Wish < ApplicationRecord
  belongs_to :user
  belongs_to :proposal, counter_cache: true, touch: true

  validates :user, presence: true, uniqueness: { scope: :proposal }
  validates :proposal, presence: true, uniqueness: { scope: :user }
end
