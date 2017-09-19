# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Pic.destroy_all
Tag.destroy_all


kurien = User.create(email: 'kurien@gmail.com', password: 'password')
kurien.pics.create!(title: "Tasty",body: "latest design",img_url:"https://i.imgur.com/nAFBLce.png",uploaded_by:"kurien")
# 
# tag1 = Tag.create!(name: "design")
# tag2 = Tag.create!(name: "blog")
upload1 =kurien.pics.create!(title: "New Adventures",body: "latest design",img_url:"https://imgur.com/e7jGl3X.jpg",uploaded_by:"Albert")
upload2 = kurien.pics.create!(title: "Oliver Russel",body: "sales design",img_url:"https://imgur.com/mkcl4xN.jpg",uploaded_by:"Oliver Russel")
upload3 = kurien.pics.create!(title: "Food Sense",body: "sales design",img_url:"https://imgur.com/Iqc8HsM.jpg",uploaded_by:"Clare")
upload4 = kurien.pics.create!(title: "Vandi",body: "sleek design",img_url:"https://imgur.com/S9IqgkY.jpg",uploaded_by:"Vandy")
