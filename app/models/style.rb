# == Schema Information
#
# Table name: styles
#
#  created_at :datetime         not null
#  id         :integer          not null, primary key
#  key        :string
#  updated_at :datetime         not null
#

class Style < ApplicationRecord

### Model Config ###

### Modules ###

### Constants ###

### Associations ###

  has_many :proposals
  has_many :category_styles, dependent: :destroy
  has_many :categories, through: :category_styles

### Macros ###

### Scopes ###

  default_scope { order(key: :asc) }

### Validations ###

  validates :key, presence: true

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

  def name
    I18n.t("activerecord.attributes.style.values.#{key}")
  end

end
