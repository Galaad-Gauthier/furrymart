class SendMassMailJob < ApplicationJob
  queue_as :default

  def perform(mass_mail)
    recipients =
      if mass_mail.recipients == "*"
        User.all
      else
        User.where(email: mass_mail.recipients.split(","))
      end

    recipients.find_each do |recipient|
      if recipient.allow_informations
        MassMailer.regular(mass_mail, recipient).deliver_later
      end
    end
  end
end
