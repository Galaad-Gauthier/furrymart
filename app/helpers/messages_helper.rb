module MessagesHelper
  def last_message_with(recipient)
    messages = policy_scope(Message.with(recipient)).order(created_at: :desc).first
  end

  def current_user_has_new_messages_from?(user)
    last_message_with(user).present? && last_message_with(user).recipient == current_user && !last_message_with(user).read?
  end
end
