# == Schema Information
#
# Table name: users
#
#  artist_rating             :float            default(0.0)
#  commissioner_rating       :float            default(0.0)
#  confirmation_sent_at      :datetime
#  confirmation_token        :string
#  confirmed_at              :datetime
#  created_at                :datetime         not null
#  current_sign_in_at        :datetime
#  current_sign_in_ip        :inet
#  email                     :string           default(""), not null
#  encrypted_password        :string           default(""), not null
#  id                        :integer          not null, primary key
#  is_deleted                :boolean          default(FALSE)
#  language                  :string
#  last_sign_in_at           :datetime
#  last_sign_in_ip           :inet
#  name                      :string
#  notifications_permissions :hstore           default({})
#  remember_created_at       :datetime
#  reset_password_sent_at    :datetime
#  reset_password_token      :string
#  show_adult_content        :boolean
#  sign_in_count             :integer          default(0), not null
#  slug                      :string
#  unconfirmed_email         :string
#  updated_at                :datetime         not null
#

class User < ApplicationRecord

### Model Config ###

  acts_as_reader
  acts_as_followable
  acts_as_follower

### Modules ###

  include AASM
  include Filterable
  include SanitizedFilterable
  include PublicActivity::Model
  extend FriendlyId

### Constants ###

  LANGUAGES = %w(en fr)

  NOTIFICATIONS_PERMISSIONS = %w(
    allow_informations
    allow_message_created_notification
    allow_quotation_created_notification
    allow_quotation_accepted_notification
    allow_quotation_refused_notification
    allow_quotation_cancelled_notification
    allow_quotation_paid_notification
    allow_quotation_done_notification
    allow_quotation_remind_waiting_approval_notification
    allow_artist_quotation_comment_created_notification
    allow_commissioner_quotation_comment_created_notification
    allow_proposal_created_notification
    allow_proposal_opened_notification
    allow_follow_notification
    allow_question_created_notification
    allow_question_answered_notification
    allow_quotation_invoice_paid_notification
    allow_quotation_invoice_cancel_paid_notification
  )

### Associations ###

  store_accessor :notifications_permissions, NOTIFICATIONS_PERMISSIONS

  has_one :profile, dependent: :destroy
  has_one :admin, foreign_key: "email", primary_key: "email", class_name: "AdminUser"

  has_many :characters, -> { where(is_deleted: false) }, dependent: :destroy
  has_many :assets, -> { where(is_deleted: false) }, dependent: :destroy
  has_many :proposals, -> { where(is_deleted: false) }, dependent: :destroy, foreign_key: :artist_id
  has_many :quotations_as_commissioner, class_name: "Quotation", foreign_key: :commissioner_id, dependent: :destroy
  has_many :quotations_as_artist, -> { where.not(state: :draft) }, class_name: "Quotation", foreign_key: :artist_id
  has_many :characters_assets, through: :characters, source: :assets
  has_many :questions, foreign_key: :recipient_id
  has_many :wishes

### Macros ###

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:twitter]

  friendly_id :slug_candidates, use: [:slugged, :finders, :history]
  filterable :id, :name, :slug

### Scopes ###

### Validations ###

  validates :language, presence: true, inclusion: { in: LANGUAGES }
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  validate :uniqueness_of_name, if: Proc.new{ |user| user.name.present? }

### Callbacks ###

  before_create :build_profile
  after_save :reset_proposals_slug, if: Proc.new{ |user| user.name_changed? }
  after_save :reimport_proposals
  after_create :send_welcome_email

### State machines ###

### Class methods ###

### Instance Methods ###

  def active_for_authentication?
    !is_deleted?
  end

  NOTIFICATIONS_PERMISSIONS.each do |notification_permission|
    define_method(notification_permission) {
      return true if super().nil?
      return true if super() == '1'
      super() == 'true'
    }
  end

  private

  def should_generate_new_friendly_id?
    name_changed?
  end

  def slug_candidates
    siblings = User.sanitized_filter(name: name)

    [
      [:name],
      [:name, siblings.count]
    ]
  end

  def reimport_proposals
    proposals.import
  end

  def uniqueness_of_name
    if User.where.not(id: self.id).sanitized_filter(name: name).any?
      errors.add(:name, "is already taken")
    end
  end

  def send_welcome_email
    InformationMailer.welcome(self).deliver_later
  end

  def reset_proposals_slug
    proposals.find_each do |proposal|
      proposal.slug = nil
      proposal.save!
    end
  end

end
