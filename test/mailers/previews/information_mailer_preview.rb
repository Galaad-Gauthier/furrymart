
# Preview all emails at http://localhost:3000/rails/mailers/information_mailer
class InformationMailerPreview < ActionMailer::Preview

  def welcome
    InformationMailer.welcome(User.first)
  end

end
