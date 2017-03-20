# == Schema Information
#
# Table name: delays
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  key        :string
#  rank       :integer
#  updated_at :datetime         not null
#

class Delay < ApplicationRecord

### Model Config ###

### Modules ###

### Constants ###

### Associations ###

  has_many :proposals

### Macros ###

### Scopes ###

  default_scope { order(rank: :asc) }

### Validations ###

  validates :key, presence: true

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

  def name
    I18n.t("activerecord.attributes.delay.values.#{key}")
  end

end
