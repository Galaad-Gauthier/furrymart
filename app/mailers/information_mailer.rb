class InformationMailer < ApplicationMailer
  include Roadie::Rails::Mailer

  default from: "#{FurryMart::Application.config.site_name} <team@#{ENV['DOMAIN'] || 'example.com'}>"

  add_template_helper(ApplicationHelper)

  def welcome(user)
    @user = user

    roadie_mail({
      to: @user.email,
      subject: build_subject('information_mailer.welcome.title', username: @user.name)
    })
  end

  protected

  def build_subject(locale_key, interpolations = {})
    I18n.t(locale_key, interpolations)
  end
end
