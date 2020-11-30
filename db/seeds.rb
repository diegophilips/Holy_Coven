# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Starting seed file"
User.destroy_all
test = User.create!(first_name: "Albane", last_name: "Tonnellier", bio: "Producer with 10 years + experience that has used 3 different DAW programs and been producing everything from hip hop music to film music to Rockabilly to Pop. I can offer you everything almost on Hans Zimmers level but without the orchestra behind me.", email: "albane@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "David", last_name: "Fla", bio: "Hi, my name is David. I have been producing music for the last 10 yers on the indie London Scene.
I have worked with many artists like OH LA KANADA and Czg. I have my own studio and I am ready to press record. ", email: "david@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Alberto", last_name: "Zioli", bio: "I have worked as a music journalist and in music PR and marketing for 5+ years, and am passionate about helping bands and artists take their social media game to the next level. ", email: "alberto@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Vivian", last_name: "Golightly", bio: "Being a published author, director, producer and singer I learnt a lot about the challenges surrounding living a creative life. I started working as a creativity coach in 2020 after training with Eric Maisel, who is considered the „Godfather of Creativity Coaching.“ ", email: "vivian@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Cleo", last_name: "Ravise", bio: "Hi, my name is Cleo and am here to help you. Are you trying to grow your career, and you have reached the conclusion that you need a strong social media manager? You are in the right place! I help businesses to enhance their activity through Online Marketing and Online Advertising. ", email: "cleo@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Callum", last_name: "Lynch", bio: "With over 20 years of experience across the entire spectrum of the music industry, including nearly a decade as an A&R for the Universal umbrella of labels and 10 years as a presenter on BBC Radio 1, Callum has been a lawyer for nine years. His practice takes in the entire breadth of music-focused entertainment industry.“ ", email: "callum@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Pete", last_name: "Bott", bio: "Following a successful career as an artist, writer and producer with Warner/679 signed electro act Heads We Dance, Pete Bott gained a master’s degree in law and qualified as a solicitor in 2012. His clients now include artists such as Bring Me The Horizon, Sigma and Fox Stevenson, as well as producers and managers across all genres of music.“ ", email: "pete@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Roberto", last_name: "Bonari", bio: "I'm a music producer, record label a&r and a part of an edm duo Light and Noise. I love what I do and have more than 5 years experience in music production.“ ", email: "roberto@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Astrid", last_name: "Whrite", bio: "I am a marketing specialist with 9 years of experience. I assisted music artists with getting their first 1000 fans, accelerated the growth of their fan bases, helped them establish brand, got them featured in press, got their music shared by large influencers, helped them make money with their music and much more.“ ", email: "astrid@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Oliver", last_name: "Green", bio: "I am Oliver, a professional digital marketing specialist with over ten years of experience. Successfully work with youtube video promotion/marketing, youtube video SEO, channel SEO also works for viral Spotify music promotion, social media marketing, and management,google AdSense.“ ", email: "oliver@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Eva", last_name: "Saboia", bio: "My name is Eva and I am a qualified artist manager with the expertise of creating social media content, developing career strategies, overseeing marketing and publicity and simply running the business side of an artist's music while letting them focus on the creative side of it.“ ", email: "eva@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Koto", last_name: "Uchida", bio: "I love creating music, and everything that goes into it. Whether it's writing, producing, mixing or mastering I can help you bring your idea to life. I have experience in pop, rap, film/dance and a cappella music. I have a B.S. in Music Production and Recording Arts from Elon University.“ ", email: "koto@holycoven.com", password: "Qwerty", pro: true)
User.create!(first_name: "Octavia", last_name: "Thomson", bio: "I’m a music producer, guitarist, composer and musician. I have decades of experience in music, composition and production. I have years of experience in lots of music genres and i can give you a final product with high quality standard and a professional touch.“ ", email: "octavia@holycoven.com", password: "Qwerty", pro: true)

puts "made #{User.count} users"


Service.destroy_all
Service.create!(type_of_service: "Social media management" , description: "Get help with Instagram, Facebook, Twitter & TikTok" )
Service.create!(type_of_service: "Marketing" , description: "Get help on how to market your next release" )
Service.create!(type_of_service: "PR and playlisting" , description: "Get help getting in touch with blogs, journalists and playlist curators" )
Service.create!(type_of_service: "Production" , description: "Get help with your mixing, mastering or recordings" )
Service.create!(type_of_service: "Creative coaching " , description: "Get help on how to boost your creativity" )
Service.create!(type_of_service: "Legal & administrative advising " , description: "Get help with administration and your rights as a musician" )
puts "made #{Service.count} Services"
