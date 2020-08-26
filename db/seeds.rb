# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

les_halles = { name: "Les Halles", address: "201 Shinjuku st, Tokyo", phone_number:"209222304", category: "french"}
pizza_hut = { name: "Pizza Hut", address: "18 America Dr, New York", phone_number:"18008877663", category: "italian"}
mizono = { name: "Mizono", address: "99 VFW way, Boston", phone_number:"6517223928", category: "japanese"}
waffle_haus = { name: "Waffle Haus", address: "77 Slope Ln, Colorado", phone_number:"808273745", category: "belgian"}
panda_express = { name: "Panda Express", address: "99 E Main St, New York", phone_number:"555555555", category: "chinese"}

[ les_halles, pizza_hut, mizono, waffle_haus, panda_express].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end