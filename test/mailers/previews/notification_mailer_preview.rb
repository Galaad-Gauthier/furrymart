
# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview
  def message_created
    NotificationMailer.message_created(Message.last)
  end

  def question_created
    NotificationMailer.question_created(Question.last)
  end

  def question_answered
    NotificationMailer.question_answered(Question.last)
  end

  def quotation_created
    NotificationMailer.quotation_created(Quotation.where.not(proposal: nil).last)
  end

  def quotation_accepted
    NotificationMailer.quotation_accepted(Quotation.last)
  end

  def quotation_refused
    NotificationMailer.quotation_refused(Quotation.where.not(refuse_reason: nil).last)
  end

  def quotation_paid
    NotificationMailer.quotation_paid(Quotation.last)
  end

  def quotation_done
    NotificationMailer.quotation_done(Quotation.last)
  end

  def quotation_cancelled
    NotificationMailer.quotation_cancelled(Quotation.last)
  end

  def quotation_remind_waiting_approval
    NotificationMailer.quotation_remind_waiting_approval(Quotation.last)
  end

  def commissioner_quotation_comment_created
    NotificationMailer.commissioner_quotation_comment_created(QuotationComment.where.not(body: "").last)
  end

  def artist_quotation_comment_created
    NotificationMailer.artist_quotation_comment_created(QuotationComment.where.not(body: "").last)
  end

  def custom_quotation_created
    quotation = Quotation.last
    quotation.assign_attributes(proposal: nil)
    NotificationMailer.quotation_created(quotation)
  end

  def custom_quotation_accepted
    quotation = Quotation.last
    quotation.assign_attributes(proposal: nil)
    NotificationMailer.quotation_accepted(quotation)
  end

  def custom_quotation_refused
    quotation = Quotation.last
    quotation.assign_attributes(proposal: nil)
    NotificationMailer.quotation_refused(quotation)
  end

  def custom_quotation_paid
    quotation = Quotation.last
    quotation.assign_attributes(proposal: nil)
    NotificationMailer.quotation_paid(quotation)
  end

  def custom_quotation_done
    quotation = Quotation.last
    quotation.assign_attributes(proposal: nil)
    NotificationMailer.quotation_done(quotation)
  end

  def custom_quotation_cancelled
    quotation = Quotation.last
    quotation.assign_attributes(proposal: nil)
    NotificationMailer.quotation_cancelled(quotation)
  end

  def commissioner_custom_quotation_comment_created
    quotation = Quotation.last
    quotation.assign_attributes(proposal: nil)
    NotificationMailer.commissioner_quotation_comment_created(quotation.comments.where.not(body: nil).last)
  end

  def artist_custom_quotation_comment_created
    quotation = Quotation.last
    quotation.assign_attributes(proposal: nil)
    NotificationMailer.artist_quotation_comment_created(quotation.comments.where.not(body: nil).last)
  end

  def proposal_created
    NotificationMailer.proposal_created(Proposal.last, User.last)
  end

  def proposal_opened
    NotificationMailer.proposal_opened(Proposal.last, User.last)
  end

  def follow
    NotificationMailer.follow(User.last, User.last)
  end

  def invoice_paid
    NotificationMailer.invoice_paid(Invoice.last)
  end

  def invoice_cancelled_paid
    NotificationMailer.invoice_cancelled_paid(Invoice.last)
  end
end
