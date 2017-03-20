class CreateCurrencies < ActiveRecord::Migration[5.0]

  def change
    create_table :currencies do |t|
      t.string :name
      t.string :uid
      t.timestamps
    end

    Money::Currency.table.values.select do |currency|
      currency[:iso_code].in? %w(EUR GBP JPY USD CHF CAD AUD)
    end.each do |currency|
      Currency.where(
        name: currency[:name],
        uid: currency[:iso_code]
      ).first_or_create!
    end
  end

end
