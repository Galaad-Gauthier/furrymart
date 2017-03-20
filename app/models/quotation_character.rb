# == Schema Information
#
# Table name: quotations_characters
#
#  character_id :integer
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  quotation_id :integer
#  updated_at   :datetime         not null
#

class QuotationCharacter < ApplicationRecord

### Model Config ###

  self.table_name = "quotations_characters"

### Modules ###

### Constants ###

### Associations ###

  belongs_to :quotation, touch: true
  belongs_to :character

### Macros ###

### Scopes ###

### Validations ###

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
