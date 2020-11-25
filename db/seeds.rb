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
User.create!(first_name: "David", last_name: "Fla", bio: "Hi, my name is David. I have been producing music for the last 10 yers on the indie London Scene.
I have worked with many artists like OH LA KANADA and Czg. I have my own studio and I am ready to press record. ", email: "david@albane.com", password: "Qwerty", pro: true)
puts "made #{User.count} users"


Service.destroy_all
Service.create!(type_of_service: "Social media management" , description: " Description : add it later" )
Service.create!(type_of_service: "Marketing" , description: "Description : add it later" )
Service.create!(type_of_service: "PR and playlisting" , description: "Description : add it later" )
Service.create!(type_of_service: "Production" , description: "Description : add it later" )
Service.create!(type_of_service: "Creative coaching " , description: "Description : add it later" )
Service.create!(type_of_service: "Legal & administrative advising " , description: "Description : add it later" )
puts "made #{Service.count} Services"
