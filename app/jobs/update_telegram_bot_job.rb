class UpdateTelegramBotJob < ApplicationJob

  require 'telegram/bot'

  queue_as :default

  CHAT_IDS = [
    ENV["TELEGRAM_FURRYMART_LIVE_CHANNEL_ID"]
  ]

  def perform(proposal)
    token = ENV["TELEGRAM_BOT_API_TOKEN"]

    return unless proposal.visible? && token.present?

    Telegram::Bot::Client.run(token) do |bot|
      CHAT_IDS.each do |chat_id|
        bot.api.send_message(chat_id: chat_id, text: build_message_body_for(proposal))
      end
    end
  end

  def build_message_body_for(proposal)
    "\n\n\n🐾🐾 New proposal on FurryMart! 🐾🐾 \n\n\"#{proposal.title.strip.truncate(50)}\" by #{proposal.artist.name}\n#{proposal.category.name} — #{proposal.style.name} \n\nGo check the full proposal here #{Rails.application.routes.url_helpers.proposal_url(id: proposal.slug, host: ENV['DOMAIN'])} \n\n\n"
  end

end


