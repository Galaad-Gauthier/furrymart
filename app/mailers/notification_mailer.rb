class NotificationMailer < ApplicationMailer
  include Roadie::Rails::Mailer

  default from: "#{FurryMart::Application.config.site_name} <notification@#{ENV['DOMAIN'] || 'example.com'}>"

  add_template_helper(ApplicationHelper)

  def message_created(message)
    @message = message

    roadie_mail({
      to: @message.recipient.email,
      subject: build_subject('notification_mailer.message_created.title', {
          sender_name: @message.sender.name
        })
      })
  end

  def question_created(question)
    @question = question
    @recipient = question.recipient

    roadie_mail({
      to: @recipient.email,
      subject: build_subject('notification_mailer.question_created.title', { sender_name: @question.sender.name })
    })
  end

  def question_answered(question)
    @question = question
    @recipient = question.sender

    roadie_mail({
      to: @recipient.email,
      subject: build_subject('notification_mailer.question_answered.title', { recipient_name: @question.recipient.name })
    })
  end

  def quotation_created(quotation)
    @quotation = quotation
    @recipient = quotation.artist

    roadie_mail(to: @recipient.email, subject: build_subject('notification_mailer.quotation_created.title'))
  end

  def quotation_accepted(quotation)
    @quotation = quotation
    @recipient = quotation.commissioner

    roadie_mail({
      to: @recipient.email,
      subject: build_subject('notification_mailer.quotation_accepted.title', { artist_name: @quotation.artist.name })
    })
  end

  def quotation_refused(quotation)
    @quotation = quotation
    @recipient = quotation.commissioner

    roadie_mail({
      to: @recipient.email,
      subject: build_subject('notification_mailer.quotation_refused.title', { artist_name: @quotation.artist.name })
    })
  end

  def quotation_cancelled(quotation)
    @quotation = quotation
    @recipient = quotation.commissioner

    roadie_mail({
      to: @recipient.email,
      subject: build_subject('notification_mailer.quotation_cancelled.title', { artist_name: @quotation.artist.name })
    })
  end

  def quotation_paid(quotation)
    @quotation = quotation
    @recipient = quotation.commissioner

    roadie_mail({
      to: @recipient.email,
      subject: build_subject('notification_mailer.quotation_paid.title', { artist_name: @quotation.artist.name })
    })
  end

  def quotation_done(quotation)
    @quotation = quotation
    @recipient = quotation.commissioner

    roadie_mail({
      to: @recipient.email,
      subject: build_subject('notification_mailer.quotation_done.title', { artist_name: @quotation.artist.name })
    })
  end

  def quotation_remind_waiting_approval(quotation)
    @quotation = quotation
    @recipient = quotation.artist

    roadie_mail(to: @recipient.email, subject: build_subject('notification_mailer.quotation_remind_waiting_approval.title'))
  end

  def artist_quotation_comment_created(quotation_comment)
    @quotation_comment = quotation_comment
    @quotation = quotation_comment.quotation
    @recipient = @quotation.commissioner

    roadie_mail({
      to: @recipient.email,
      subject: build_subject('notification_mailer.artist_quotation_comment_created.title', {
          artist_name: @quotation.artist.name
        })
      })
  end

  def commissioner_quotation_comment_created(quotation_comment)
    @quotation_comment = quotation_comment
    @quotation = quotation_comment.quotation
    @recipient = @quotation.artist

    roadie_mail({
      to: @recipient.email,
      subject: build_subject('notification_mailer.commissioner_quotation_comment_created.title', { commissioner_name: @quotation.commissioner.name })
    })
  end

  def proposal_created(proposal, follower)
    @proposal = proposal
    @recipient = follower

    roadie_mail(to: @recipient.email, subject: build_subject('notification_mailer.proposal_created.title', { artist_name: @proposal.artist.name, proposal_title: @proposal.title }))
  end

  def proposal_opened(proposal, follower)
    @proposal = proposal
    @recipient = follower

    roadie_mail(to: @recipient.email, subject: build_subject('notification_mailer.proposal_opened.title', { artist_name: @proposal.artist.name, proposal_title: @proposal.title }))
  end

  def follow(follower, followed)
    @follower = follower
    @recipient = followed

    roadie_mail(to: @recipient.email, subject: build_subject('notification_mailer.follow.title', { follower_name: follower.name }))
  end

  def invoice_paid(invoice)
    @invoice = invoice
    @artist = invoice.quotation.artist
    @commissioner = invoice.quotation.commissioner

    roadie_mail(to: @artist.email, subject: build_subject('notification_mailer.invoice_paid.title', { commissioner_name: @commissioner.name }))
  end

  def invoice_cancelled_paid(invoice)
    @invoice = invoice
    @artist = invoice.quotation.artist
    @commissioner = invoice.quotation.commissioner

    roadie_mail(to: @artist.email, subject: build_subject('notification_mailer.invoice_cancelled_paid.title', { commissioner_name: @commissioner.name }))
  end

  protected

  def build_subject(locale_key, interpolations = {})
    I18n.t(locale_key, interpolations)
  end
end
