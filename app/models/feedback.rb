# == Schema Information
#
# Table name: feedbacks
#
#  body       :text
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  updated_at :datetime         not null
#  user_id    :integer
#

class Feedback < ApplicationRecord

### Model Config ###

### Modules ###

### Constants ###

### Associations ###

  belongs_to :user

### Macros ###

### Scopes ###

### Validations ###

  validates :body, presence: true, length: { maximum: 50000 }

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
