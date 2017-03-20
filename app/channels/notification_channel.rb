class NotificationChannel < ApplicationCable::Channel
  def subscribed
    stream_for current_user
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def self.push(user, message)
    self.broadcast_to(user, {
      message: message
    })
  end
end
