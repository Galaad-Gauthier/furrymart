# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Proposal.destroy_all
User.destroy_all
Quotation.destroy_all
Asset.destroy_all
Style.destroy_all
Category.destroy_all
Delay.destroy_all
Currency.destroy_all

5.times do |i|
  puts "Create user"
  user = User.create!({
    name: Faker::Superhero.name + i.to_s,
    language: 'en',
    email: "#{i}@example.com",
    password: 'password',
    password_confirmation: 'password',
  })
end

Money::Currency.table.values.select do |currency|
  currency[:iso_code].in? %w(EUR GBP JPY USD CHF CAD AUD)
end.each do |currency|
  Currency.where(
    name: currency[:name],
    uid: currency[:iso_code],
    usd_rate: 1
  ).first_or_create!
end

%w(
  digital_bw
  digital_colored
  traditional_bw
  traditional_colored
  vectorial
  3D_art
  cellshading
  pixel_art
  animated
  other
).each{ |key| Style.find_or_create_by(key: key) }

%w(
  artwork
  badge
  fursuit
  ych
  refsheet
  stickers
  icons
  comics
  adoptable
  goodies
  other
).each do |key|
  Category.find_or_create_by(key: key)
end

[
  "shortly",
  "see_description",
  "three_days",
  "one_week",
  "two_weeks",
  "one_month",
  "two_months",
  "more_than_two_months"
].each do |key|
  Delay.find_or_create_by(key: key)
end

users = User.all.to_a
users.each do |user|
  (users - [user]).sample(10).each { |followed| user.follow(followed) }

  4.times do
    puts "Create proposal for #{user.name}"
    Proposal.create!({
      artist: user,
      title: "#{['colored', 'b/w'].sample} #{['full-body', 'headshot', 'chibi'].sample}",
      visible: [true, false].sample,
      price: rand(100),
      delay: Delay.all.sample,
      style: Style.all.sample,
      category: Category.all.sample,
      description: Faker::Lorem.paragraph(8),
      currency_uid: ["EUR", "USD"].sample
    })
  end

  2.times do
    puts "Create character for #{user.name}"
    Character.create!({
      user: user,
      name: Faker::Superhero.name,
      species: ['wolf', 'fox', 'dragon'].sample,
      description: Faker::Lorem.paragraph(8),
      visible: [true, false].sample
    })
  end

  3.times do
    artist = (users - [user]).sample
    puts "Create quotation for #{user.name}"
    Quotation.create!({
      commissioner: user,
      artist: artist,
      proposal: artist.proposals.order("random()").first,
      description: Faker::Lorem.paragraph(8),
      tos_accepted: true,
      state: "waiting_payment"
    })
  end
end
