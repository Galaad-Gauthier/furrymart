# == Schema Information
#
# Table name: announcement_comments
#
#  announcement_id :integer
#  body            :text
#  created_at      :datetime         not null
#  id              :integer          not null, primary key
#  sender_id       :integer
#  updated_at      :datetime         not null
#

class AnnouncementComment < ApplicationRecord
  belongs_to :announcement, touch: true
  belongs_to :sender, class_name: "User"

  validates :body, presence: true
end
