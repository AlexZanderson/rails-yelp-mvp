# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants"

20.times do
  name = Faker::Restaurant.name
  address = Faker::Address.street_address
  phone_number = Faker::PhoneNumber.phone_number_with_country_code
  category = ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  Restaurant.create(name: name, address: address, phone_number: phone_number, category: category)
end

puts "Finished!"


# Faker::Restaurant.review
