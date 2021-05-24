# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
User.reset_pk_sequence

Model.delete_all
Model.reset_pk_sequence

Outfit.delete_all
Outfit.reset_pk_sequence

OutfitClothing.delete_all
OutfitClothing.reset_pk_sequence

Closet.delete_all
Closet.reset_pk_sequence

Clothing.delete_all
Clothing.reset_pk_sequence


puts "Seeding Users!"
User.create!(name: "Radiyah", username: "rsabur", age: 30, gender: "f", password: "abc123", model_id: 1, image: "https://miro.medium.com/fit/c/1360/1360/1*heABBE5wzvRqX2_X60OeyA@2x.jpeg")
User.create!(name: "Lilly", username: "lilya", age: 25, gender: "f", password: "abc123", model_id: 3, image: "https://m.media-amazon.com/images/M/MV5BMTgxMjM2NTAyMV5BMl5BanBnXkFtZTgwOTU4NjU2NDE@._V1_.jpg")


puts "Seeding Models!"
Model.create!(color: "Deep", image: "https://i.imgur.com/aztU5Mr.png")
Model.create!(color: "Medium", image: "https://i.imgur.com/JAObVRi.png")
Model.create!(color: "Light", image: "https://i.imgur.com/2vXog6X.png")


puts "Seeding Clothing!"
Clothing.create!(name: "Pink Pencil Skirt", image: "https://i.imgur.com/AN2Ca53.png", size: "s", category: "bottom", gender: "f")
Clothing.create!(name: "Black Mini Dress", image: "https://i.imgur.com/z0U4Xdk.png", size: "s", category: "dress", gender: "f")
Clothing.create!(name: "Blue Crop Top", image: "https://i.imgur.com/KTlK5yR.png", size: "s", category: "top", gender: "f")
Clothing.create!(name: "Jean Shorts", image: "https://i.imgur.com/IM6G4Wy.png", size: "s", category: "bottom", gender: "f")
Clothing.create!(name: "Asymetrical Tan Skirt", image: "https://i.imgur.com/KTNYUC8.png", size: "s", category: "bottom", gender: "f")
Clothing.create!(name: "White Crop Top", image: "https://i.imgur.com/FZnG6Lq.png", size: "s", category: "top", gender: "f")
Clothing.create!(name: "Tropical Dress", image: "https://i.imgur.com/lHFp5Fb.png", size: "s", category: "dress", gender: "f")


puts "Seeding Closets!"
Closet.create!(user_id: 1, clothing_id: 1)
Closet.create!(user_id: 1, clothing_id: 2)
Closet.create!(user_id: 1, clothing_id: 3)
Closet.create!(user_id: 1, clothing_id: 4)
Closet.create!(user_id: 1, clothing_id: 5)
Closet.create!(user_id: 1, clothing_id: 6)
Closet.create!(user_id: 1, clothing_id: 7)
Closet.create!(user_id: 2, clothing_id: 7)


puts "Seeding Outfits!"
Outfit.create!(user_id: 1, name: "Casual")
Outfit.create!(user_id: 1, name: "Event")


puts "Seeding OutfitClothings!"
OutfitClothing.create!(outfit_id: 1, clothing_id: 3)
OutfitClothing.create!(outfit_id: 1, clothing_id: 4)
OutfitClothing.create!(outfit_id: 2, clothing_id: 7)


puts "Seed Successful! 🎉"
