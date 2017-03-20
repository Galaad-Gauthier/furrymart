# == Schema Information
#
# Table name: proposals
#
#  artist_id             :integer
#  banner                :string
#  banner_id             :integer
#  can_pay_what_you_want :boolean          default(FALSE)
#  category_id           :integer
#  created_at            :datetime         not null
#  currency_uid          :string
#  delay_id              :integer
#  description           :text
#  id                    :integer          not null, primary key
#  is_deleted            :boolean          default(FALSE)
#  price                 :integer
#  slug                  :string
#  style_id              :integer
#  title                 :string
#  tos                   :text
#  updated_at            :datetime         not null
#  usd_price             :float
#  visible               :boolean          default(FALSE)
#

class Proposal < ApplicationRecord

  ### Model Config ###


  ### Modules ###

  include Filterable
  include SanitizedFilterable
  include Illustrable
  include PublicActivity::Model
  extend FriendlyId

  include Elasticsearch::Model

  include Indexing
  after_touch() { __elasticsearch__.index_document }

  ### Constants ###

  ### Associations ###

  belongs_to :artist, class_name: "User"
  belongs_to :currency, foreign_key: :currency_uid, primary_key: :uid
  belongs_to :banner, -> { where(is_deleted: false) }, class_name: "Asset"
  belongs_to :delay
  belongs_to :style
  belongs_to :category

  has_many :proposal_assets, dependent: :destroy, inverse_of: :proposal
  has_many :assets, -> { where(is_deleted: false) }, through: :proposal_assets
  has_many :activities, as: :trackable, class_name: 'PublicActivity::Activity', dependent: :destroy
  has_many :quotations, dependent: :destroy
  has_many :wishes
  has_many :wishers, through: :wishes, source: :user


  ### Macros ###

  acts_as_taggable_on :tags, :cons
  friendly_id :slug_candidates, use: [:slugged, :finders, :history]
  filterable :artist_id, :visible
  accepts_nested_attributes_for :proposal_assets, allow_destroy: true

  ### Scopes ###

  ### Validations ###

  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 50000 }
  validates :tos, length: { maximum: 50000 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0, less_than: 1000000 }
  validates :delay, presence: true
  validates :can_pay_what_you_want, inclusion: { in: [true, false] }
  validates :is_deleted, inclusion: { in: [true, false] }
  validates :visible, inclusion: { in: [true, false] }
  validates :category, presence: true
  validates :currency, presence: true

  ### Callbacks ###

  before_validation :fix_pay_what_you_want, if: -> { self.price == 0 || self.can_pay_what_you_want? }

  before_save :set_usd_price

  after_commit :notify_followers, on: [:create], if: -> { self.visible? }
  after_commit :notify_wishers, on: [:update], if: -> { self.visible? && self.previous_changes.has_key?('visible')}

  after_commit :send_tweet, on: :create, if: -> { self.visible? }
  after_commit :update_telegram_bot, on: :create, if: -> { self.visible? }

  after_commit on: [:create] do
    __elasticsearch__.index_document
  end

  after_commit on: [:update] do
    __elasticsearch__.index_document
  end

  after_commit on: [:destroy] do
    __elasticsearch__.delete_document
  end

  ## ES settings

  settings(index: { number_of_shards: 1, number_of_replicas: 0 },
    analysis: {
        filter: {
          synonym: {
            type: "synonym",
            ignore_case: true,
            synonyms: $synonyms.map { |line| line.join(",") }
          }
        },
        analyzer: {
          synonym: {
            tokenizer: "whitespace",
            filter: ["synonym", "lowercase", "stop", "snowball"]
          }
        }
    }) do
      mapping do
        indexes :title, analyzer: 'synonym'
        indexes :description, analyzer: 'synonym'
      end
  end

    ### State machines ###

    ### Class methods ###

    ### Instance Methods ###

    def as_indexed_json(options = {})
      self.as_json(
        except: [:banner],
        include: {
          artist: { methods: [:name], only: [:name, :artist_rating] },
          tags: { only: [:name] },
          delay: { only: [:key, :rank] },
          style: { methods: [:name], only: [:key, :name] },
          category: { methods: [:name], only: [:key, :name] }
        }
      )
    end

    def display_name
      [artist.name, title].join(" — ")
    end

    def formatted_price
      formatting_options = { no_cents_if_whole: true, symbol_before_without_space: false}
      formatting_options.merge!(symbol_position: :after) if currency_uid.in? %w(EUR)

      Money.from_amount(price, currency_uid).format(formatting_options)
    end

    def formatted_usd_price
      Money.from_amount(usd_price, "USD").format({ no_cents_if_whole: true, symbol_before_without_space: false})
    end

    def fix_pay_what_you_want
      self.price = 0
      self.can_pay_what_you_want = true
    end

    protected

    def should_generate_new_friendly_id?
      true
    end

    def slug_candidates
      siblings = Proposal.where(artist_id: artist.id).sanitized_filter(title: title)

      [
        [artist.slug, :title],
        [artist.slug, :title, siblings.count]
      ]
    end

    def notify_followers
      NotifyFollowersJob.perform_later(self)
    end

    def notify_wishers
      NotifyWishersJob.perform_later(self)
    end

    def send_tweet
      SendTweetJob.perform_later(self)
    end

    def update_telegram_bot
      UpdateTelegramBotJob.perform_later(self)
    end

    def set_usd_price
      self.usd_price = (price * currency.usd_rate)
    end

  end
