class MassMail < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :recipients, presence: true

  after_commit :send_mass_mail, on: [:create, :update]

  def send_mass_mail
    SendMassMailJob.perform_later(self)
  end
end
