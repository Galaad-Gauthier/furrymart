PublicActivity::Activity.module_eval do

  acts_as_readable :on => :updated_at

  after_commit :notify, on: [:create]

  protected
  def notify
    ActivityChannel.broadcast_to(recipient, self.to_json)
  end
end
