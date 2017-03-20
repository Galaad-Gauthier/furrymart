class AddUsdRateToCurrencies < ActiveRecord::Migration[5.0]

  def change
    add_column :currencies, :usd_rate, :float

    Currency.find_each do |currency|
      currency_rate = Money.default_bank.get_rate(currency.uid, "USD")
      currency.update(usd_rate: currency_rate)
    end
  end

end
