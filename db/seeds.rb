# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Starting seed file"
User.destroy_all
test = User.create!(first_name: "Albane", last_name: "Tonnelier", bio: "Albane is a young graphic designer", email: "albane@albane.com", password: "Qwerty", pro: true)
puts "made #{User.count} users"
