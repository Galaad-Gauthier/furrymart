namespace :quotations do
  desc "Remind waiting approval"
  task :remind_waiting_approval => :environment do
    Quotation.where(state: 'waiting_approval').where("created_at < ?", 7.days.ago).find_each do |quotation|
      if quotation.artist.allow_quotation_remind_waiting_approval_notification
        NotificationMailer.quotation_remind_waiting_approval(quotation).deliver_later
      end
    end
  end
end
