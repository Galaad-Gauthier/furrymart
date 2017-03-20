class NotifyFollowersJob < ApplicationJob
  queue_as :default

  def perform(proposal)
    return unless proposal.visible?

    proposal.artist.followers.each do |follower|
      proposal.create_activity key: "proposal.create", owner: proposal.artist, recipient: follower

      if follower.allow_proposal_created_notification
        NotificationMailer.proposal_created(proposal, follower).deliver_later
      end
    end
  end
end
