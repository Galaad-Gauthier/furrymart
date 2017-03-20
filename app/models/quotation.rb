# == Schema Information
#
# Table name: quotations
#
#  artist_id           :integer
#  artist_rating       :string
#  commissioner_id     :integer
#  commissioner_rating :string
#  created_at          :datetime         not null
#  description         :text
#  id                  :integer          not null, primary key
#  proposal_id         :integer
#  refuse_comment      :string
#  refuse_reason       :string
#  state               :string
#  tos_accepted        :boolean          default(FALSE)
#  updated_at          :datetime         not null
#

class Quotation < ApplicationRecord

### Model Config ###

### Modules ###

  include Filterable
  include AASM
  include PublicActivity::Model

### Constants ###

  REFUSE_REASONS = [
    :not_enough_time,
    :no_more_slots,
    :dont_like,
    :other
  ]

  SENTIMENTS = [
    :very_dissatisfied,
    :dissatisfied,
    :neutral,
    :satisfied,
    :very_satisfied
  ]

### Associations ###

  belongs_to :commissioner, class_name: "User"
  belongs_to :artist, class_name: "User"
  belongs_to :proposal

  has_many :quotation_characters, dependent: :destroy
  has_many :characters, through: :quotation_characters
  has_many :quotation_assets, dependent: :destroy, inverse_of: :quotation
  has_many :invoices, dependent: :destroy

  has_many :assets, through: :quotation_assets
  has_many :comments, inverse_of: :quotation, class_name: "QuotationComment", dependent: :destroy
  has_many :activities, as: :trackable, class_name: 'PublicActivity::Activity', dependent: :destroy

### Macros ###

  attr_accessor :active_admin_requested_event
  filterable :state
  accepts_nested_attributes_for :quotation_assets, allow_destroy: true

### Scopes ###

  default_scope { order(created_at: :desc) }
  scope :ongoing, -> { where.not(state: ['done', 'draft', 'waiting_approval', 'refused']) }

### Validations ###

  validates :commissioner, presence: true
  validates :artist, presence: true
  validates :description, presence: true
  validates :tos_accepted, inclusion: { in: [true] }

### Callbacks ###

after_update :compute_global_artist_rating, if: -> { artist_rating_changed? }
after_update :compute_global_commissioner_rating, if: -> { commissioner_rating_changed? }

### State machines ###

  aasm column: 'state' do

    state :draft, initial: true
    state :waiting_approval
    state :refused
    state :waiting_payment
    state :paid
    state :done

    event :publish do
      transitions from: :draft, to: :waiting_approval
    end

    event :refuse do
      transitions from: :waiting_approval, to: :refused
    end

    event :accept do
      transitions from: :waiting_approval, to: :waiting_payment
    end

    event :cancel_approval do
      transitions from: [:waiting_payment, :refused], to: :waiting_approval
    end

    event :paid do
      transitions from: :waiting_payment, to: :paid
    end

    event :finish do
      transitions from: :paid, to: :done
    end

  end

### Class methods ###

### Instance Methods ###

  def display_name
    "Quotation ##{id}"
  end

  def illustration_for(user, format = :standard)
    allowed_assets = assets.allowed_for(user)

    if allowed_assets.any?
      allowed_assets.first.file_url(format)
    elsif assets.any?
      ActionController::Base.helpers.image_url "nsfw.png"
    else
      ActionController::Base.helpers.image_url "gplaypattern.png"
    end
  end

  def compute_global_artist_rating
    ComputeGlobalRatingJob.perform_later(artist, "artist")
  end

  def compute_global_commissioner_rating
    ComputeGlobalRatingJob.perform_later(commissioner, "commissioner")
  end

  def last_invoice
    invoices.order(created_at: :desc).first
  end

end
