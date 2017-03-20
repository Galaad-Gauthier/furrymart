# == Schema Information
#
# Table name: proposals_assets
#
#  created_at  :datetime         not null
#  id          :integer          not null, primary key
#  asset_id  :integer
#  proposal_id :integer
#  updated_at  :datetime         not null
#

class ProposalAsset < ApplicationRecord

### Model Config ###

  self.table_name = "proposals_assets"

### Modules ###

### Constants ###

### Associations ###

  belongs_to :proposal, touch: true, inverse_of: :proposal_assets
  belongs_to :asset

### Macros ###

### Scopes ###

### Validations ###

  validates_presence_of :proposal
  validates_presence_of :asset

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
