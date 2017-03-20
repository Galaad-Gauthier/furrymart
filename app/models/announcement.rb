# == Schema Information
#
# Table name: announcements
#
#  author     :string
#  body       :text
#  created_at :datetime         not null
#  draft      :boolean          default(TRUE)
#  id         :integer          not null, primary key
#  slug       :string
#  title      :string
#  updated_at :datetime         not null
#

class Announcement < ApplicationRecord
  extend FriendlyId
  
  has_many :comments, class_name: "AnnouncementComment"

  friendly_id :slug_candidates, use: [:slugged, :finders, :history]

  protected

  def slug_candidates
    [ [:title] ]
  end
end
