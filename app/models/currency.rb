# == Schema Information
#
# Table name: currencies
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  name       :string
#  uid        :string
#  updated_at :datetime         not null
#  usd_rate   :float
#

class Currency < ApplicationRecord

### Model Config ###

### Modules ###

### Constants ###

### Associations ###

  has_many :proposals, primary_key: :uid, foreign_key: :currency_uid

### Macros ###

### Scopes ###

  default_scope { order(name: :asc) }

### Validations ###

  validates :uid, presence: true, uniqueness: true, length: { is: 3 }
  validates :usd_rate, numericality: { greater_than_or_equal_to: 0 }

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
