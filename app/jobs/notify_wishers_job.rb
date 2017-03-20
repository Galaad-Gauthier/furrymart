class NotifyWishersJob < ApplicationJob
  queue_as :default

  def perform(proposal)
    return unless proposal.visible?

    proposal.wishers.each do |wisher|
      proposal.create_activity key: "proposal.open", owner: proposal.artist, recipient: wisher

      if wisher.allow_proposal_opened_notification
        NotificationMailer.proposal_opened(proposal, wisher).deliver_later
      end
    end
  end
end
