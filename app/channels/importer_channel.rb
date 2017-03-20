class ImporterChannel < ApplicationCable::Channel
  def subscribed
    stream_for current_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def self.push(asset)
    self.broadcast_to(asset.user, {
      body: ApplicationController.render(partial: "users/assets/asset", locals: { asset: asset, can_update: true })
    })
  end
end
