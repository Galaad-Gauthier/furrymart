class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :redirect_missing_recipient, only: [:index], if: -> { params[:recipient_id].blank? }
  before_action :load_recipient, only: [:index]
  before_action :load_draft, only: [:index]
  before_action :load_roster, only: [:index]

  def index
    @messages = policy_scope(Message.with(@recipient))
      .order(created_at: :asc)
      .includes(sender: [:profile])

    @messages.where(recipient: current_user).update_all(read: true)
  end

  def create
    @message = Message.new(message_params)
    authorize @message

    if @message.save
      flash[:notice] = I18n.t("messages.create.success")

      if @message.recipient.allow_message_created_notification
        NotificationMailer.message_created(@message).deliver_later
      end
    end
    redirect_back fallback_location: messages_url(recipient_id: @message.recipient.slug)
  end

  protected

  def redirect_missing_recipient
    @last_message = Message.with(current_user).order(created_at: :desc).first
    if @last_message.present?
      @recipient = @last_message.sender == current_user ? @last_message.recipient : @last_message.sender
    end
  end

  def load_roster
    roster_ids = Message.with(current_user).order(created_at: :desc).pluck(:sender_id, :recipient_id).flatten.uniq - [ current_user.id ]
    if @recipient.present? && !roster_ids.include?(@recipient.id)
      roster_ids = [ @recipient.id ] + roster_ids
    end

    if roster_ids.any?
      sort = "CASE #{roster_ids.map.with_index { |id, index| "WHEN id=#{id} THEN #{index}" }.join("\n")} END"
      @roster = User.where(id: roster_ids).order(sort).includes(:profile)
    else
      @roster = User.none
    end
  end

  def load_recipient
    if params[:recipient_id]
      @recipient = User.find(params[:recipient_id])
    end
  end

  def load_draft
    @draft = Message.new(sender: current_user, recipient: @recipient) if @recipient.present?
  end

  def message_params
    strong_params(Message.new)
  end
end
