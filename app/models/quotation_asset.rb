# == Schema Information
#
# Table name: quotations_assets
#
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  asset_id   :integer
#  quotation_id :integer
#  updated_at   :datetime         not null
#

class QuotationAsset < ApplicationRecord

### Model Config ###

  self.table_name = "quotations_assets"

### Modules ###

### Constants ###

### Associations ###

  belongs_to :quotation, touch: true, inverse_of: :quotation_assets
  belongs_to :asset, touch: true

### Macros ###

### Scopes ###

### Validations ###

  validates_presence_of :quotation
  validates_presence_of :asset

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
