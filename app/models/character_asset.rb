# == Schema Information
#
# Table name: characters_assets
#
#  character_id :integer
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  asset_id   :integer
#  updated_at   :datetime         not null
#

class CharacterAsset < ApplicationRecord

### Model Config ###

  self.table_name = "characters_assets"

### Modules ###

### Constants ###

### Associations ###

  belongs_to :character, touch: true, inverse_of: :character_assets
  belongs_to :asset

### Macros ###

### Scopes ###

### Validations ###

  validates_presence_of :character
  validates_presence_of :asset

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
