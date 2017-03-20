class SendTweetJob < ApplicationJob
  queue_as :default

  def perform(proposal)
    return unless proposal.visible? && ENV["TWITTER_ACCESS_TOKEN"].present?

    client = build_client
    body = build_message_body_for(proposal)

    if body.length < 200 && Rails.env.production?
      client.update(body)
    else
      Rails.logger.debug body
    end
  end

  def build_client
    Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
      config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
      config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
      config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end
  end

  def build_message_body_for(proposal)
    "New on #FurryMart!\n\n\"#{proposal.title.strip.truncate(30)}\" by #{proposal.artist.name} #{Rails.application.routes.url_helpers.proposal_url(id: proposal.slug, host: ENV['DOMAIN'])}"
  end

end
