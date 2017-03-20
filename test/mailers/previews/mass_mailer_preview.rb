# Preview all emails at http://localhost:3000/rails/mailers/mass_mailer
class MassMailerPreview < ActionMailer::Preview
  def regular
    MassMailer.regular(MassMail.last, User.first)
  end
end
