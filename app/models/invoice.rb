class Invoice < ApplicationRecord
  include AASM
  include PublicActivity::Model

  belongs_to :quotation

  validates :quotation, presence: true
  validates :price, presence: true
  validates :currency_uid, presence: true

  aasm column: 'state' do

    state :waiting_payment, initial: true
    state :paid

    event :paid do
      transitions from: :waiting_payment, to: :paid
    end

    event :cancel_paid do
      transitions from: :paid, to: :waiting_payment
    end

  end

  def encrypted_id
    Encryptor.encrypt(id)
  end
end
