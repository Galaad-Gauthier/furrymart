# == Schema Information
#
# Table name: messages
#
#  body         :text
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  read         :boolean          default(FALSE)
#  recipient_id :integer
#  sender_id    :integer
#  updated_at   :datetime         not null
#

class Message < ApplicationRecord
  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"

  validates :body, presence: true

  scope :with, -> (user) { where("messages.recipient_id = ? OR messages.sender_id = ?", user, user) }
end
