# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all

puts 'Creating restaurants...'

10.times do
  Flat.create!(name: Faker::Company.name,
               address: Faker::Address.street_address,
               description: 'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
               price_per_night: rand(30..500),
               number_of_guests: rand(1..4))
end
puts 'Finished!'
