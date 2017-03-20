# == Schema Information
#
# Table name: characters
#
#  banner_id   :integer
#  created_at  :datetime         not null
#  description :text
#  id          :integer          not null, primary key
#  is_deleted  :boolean          default(FALSE)
#  name        :string
#  slug        :string
#  species     :string
#  updated_at  :datetime         not null
#  user_id     :integer
#  visible     :boolean          default(FALSE)
#

class Character < ApplicationRecord

### Model Config ###

### Modules ###

  include Filterable
  include SanitizedFilterable
  include Illustrable
  extend FriendlyId

### Constants ###

### Associations ###

  belongs_to :user
  belongs_to :banner, -> { where(is_deleted: false) }, class_name: "Asset"

  has_many :quotation_characters, dependent: :destroy
  has_many :quotations, through: :quotation_characters, dependent: :destroy
  has_many :character_assets, dependent: :destroy, inverse_of: :character
  has_many :assets, -> { where(is_deleted: false) }, through: :character_assets, dependent: :destroy

### Macros ###

  friendly_id :slug_candidates, use: [:slugged, :finders, :history]
  filterable :user_id, :name, :species
  accepts_nested_attributes_for :character_assets, allow_destroy: true

### Scopes ###

### Validations ###

  validates :name, presence: true, length: { maximum: 100 }
  validates :species, presence: true, length: { maximum: 100 }
  validates :description, length: { maximum: 50000 }

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

  private

  def should_generate_new_friendly_id?
    name_changed? || species_changed?
  end

  def slug_candidates
    siblings = Character.sanitized_filter(name: name)

    if species.present?
      siblings = siblings.sanitized_filter(species: species)
    end

    [
      :name,
      [:name, :species],
      [:name, :species, siblings.count],
      [:name, siblings.count]
    ]
  end

end
