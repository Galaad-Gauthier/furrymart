# == Schema Information
#
# Table name: questions
#
#  body         :text
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  recipient_id :integer
#  response     :text
#  sender_id    :integer
#  updated_at   :datetime         not null
#

class Question < ApplicationRecord

### Model Config ###

### Modules ###

  include PublicActivity::Model

### Constants ###

### Associations ###

  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"

### Macros ###

  tracked({
    only: [:create, :update],
    owner: Proc.new { |controller, model| controller.current_user },
    recipient: Proc.new { |controller, model|
      controller.current_user == model.sender ? model.recipient : model.sender
    }
  })

### Scopes ###

### Validations ###

  validates :body, presence: true

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
