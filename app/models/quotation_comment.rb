# == Schema Information
#
# Table name: quotation_comments
#
#  attachment   :string
#  body         :text
#  created_at   :datetime         not null
#  id           :integer          not null, primary key
#  quotation_id :integer
#  sender_id    :integer
#  updated_at   :datetime         not null
#

class QuotationComment < ApplicationRecord

### Model Config ###

### Modules ###

  include PublicActivity::Model

### Constants ###

### Associations ###

  belongs_to :quotation, touch: true
  belongs_to :sender, class_name: "User"

  has_one :artist, through: :quotation
  has_one :commissioner, through: :quotation

  has_many :attachments, dependent: :destroy, inverse_of: :quotation_comment
  accepts_nested_attributes_for :attachments

### Macros ###

  tracked({
    only: [:create],
    owner: Proc.new { |controller, model| controller.current_user },
    recipient: Proc.new { |controller, model|
      controller.current_user == model.quotation.artist ? model.quotation.commissioner : model.quotation.artist
    }
  })

### Scopes ###

  default_scope { order(created_at: :desc) }

### Validations ###

  validates :body, presence: true, if: -> { self.attachments.empty? }
  validates :body, length: { maximum: 50000 }

### Callbacks ###

### State machines ###

### Class methods ###

### Instance Methods ###

end
