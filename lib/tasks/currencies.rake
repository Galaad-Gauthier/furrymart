namespace :currencies do
  task :create => :environment do
    Money::Currency.table.values.select do |currency|
      currency[:iso_code].in? %w(EUR GBP JPY USD CHF CAD AUD)
    end.each do |currency|
      Currency.where(
        name: currency[:name],
        uid: currency[:iso_code],
        usd_rate: 1
      ).first_or_create!
    end
  end

  desc "Update currencies"
  task :update => :environment do
    Currency.find_each do |currency|
      currency_rate = Money.default_bank.get_rate(currency.uid, "USD")
      currency.update(usd_rate: currency_rate)
    end

    Proposal.find_each(&:save!)
  end
end
