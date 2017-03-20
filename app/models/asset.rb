class Asset < ApplicationRecord
  include Picturable
  picture_fields({ file: [:s3_file_url, :default_picture, :file_name] })

  belongs_to :user

  scope :by_reversed_date, -> { order(created_at: :desc) }
  scope :allowed_for, -> (user = nil) { (!user || !user.show_adult_content) ? where(is_adult_content: false) : all }

  validates :user, presence: true
  validates :s3_file_url, presence: true
  validates :description, length: { maximum: 100 }
  validates :is_deleted, inclusion: { in: [true, false] }
  validates :is_adult_content, inclusion: { in: [true, false] }

  def default_picture
    ActionController::Base.helpers.image_url("gplaypattern.png")
  end

  def file_name
    [user.name, description, id]
  end

  def display_name
    "#{user.name} — #{description}"
  end
end
