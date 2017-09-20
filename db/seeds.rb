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
Comment.destroy_all
Like.destroy_all

# user seed
kurien = User.create!(email: 'kurien@gmail.com', password: 'password')
ethan = User.create!(email: 'ethan@gmail.com', password: 'password')

#
# tag1 = Tag.create!(name: "design")
# tag2 = Tag.create!(name: "blog")
# design seed
upload1 =kurien.pics.create!(title: "New Adventures",body: "Latest design",img_url:"https://imgur.com/e7jGl3X.jpg",uploaded_by:"Albert")
upload2 = ethan.pics.create!(title: "Oliver Russel",body: "Sales design",img_url:"https://imgur.com/mkcl4xN.jpg",uploaded_by:"Oliver Russel")


upload3 = kurien.pics.create!(title: "Food Sense",body: "Food Blogging",img_url:"https://imgur.com/Iqc8HsM.jpg",uploaded_by:"Clare")
upload4 = kurien.pics.create!(title: "Blog Spot",body: "Sleek Design",img_url:"https://i.imgur.com/823keCF.jpg",uploaded_by:"Vandy")
upload5 = kurien.pics.create!(title: "My feed",body: "Sleek Design",img_url:"https://imgur.com/S9IqgkY.jpg",uploaded_by:"Django")
upload6 = ethan.pics.create!(title: "Vandi",body: "Dashboard Design",img_url:"https://i.imgur.com/fS57NUQ.jpg",uploaded_by:"Benjamin Bucker")
upload7 = ethan.pics.create!(title: "UI Branding",body: "Design Mockup",img_url:"https://i.imgur.com/hKXhfvI.jpg",uploaded_by:"Caprio 'D Stan'")
upload8 = ethan.pics.create!(title: "Digital Marketing",body: "Marketing Design",img_url:"https://i.imgur.com/KzqLe6K.jpg",uploaded_by:"Juvin Olivia")
upload9 = ethan.pics.create!(title: "UI Design",body: "Banking Website",img_url:"https://i.imgur.com/1tyMbOe.png",uploaded_by:"Robert Pritz")

# tag seed
tag1 = Tag.create!(name: "design",pic_id: upload1.id, user: kurien)
tag2 = Tag.create!(name: "home",pic_id: upload3.id, user: ethan)
# tag2 =upload7.tags.create!(name: "dashboard")
# tag3 =upload3.tags.create!(name: "ui")
# tag4 =upload6.tags.create!(name: "brand")
# tag5 =upload3.tags.create!(name: "phone")
# tag6 =upload4.tags.create!(name: "website")
# tag7 =upload5.tags.create!(name: "marketing")
# tag8 =upload6.tags.create!(name: "blog")
# tag9 =upload7.tags.create!(name: "phone")
# tag10 =upload8.tags.create!(name: "website")
# tag11=upload9.tags.create!(name: "marketing")
# tag12=upload6.tags.create!(name: "portfolio")
# tag13=upload5.tags.create!(name: "dashboard")
# tag14=upload4.tags.create!(name: "ui")
# tag15=upload8.tags.create!(name: "brand")
# tag16=upload9.tags.create!(name: "phone")
# tag17=upload7.tags.create!(name: "website")


#comment seed
comment1 = Comment.create!(name: "Jenny",content: "Clean and simple! I like it.",user: kurien,pic_id: upload1.id)
comment2 =Comment.create!(name: "Max",content: "Very nice work. Fresh, clean, modern, very good UX as well. Love the whole portfolio!",user: ethan,pic_id: upload2.id)
# comment3 =upload1.comments.create!(name: "James",content: "So tidy and well organized, I like where this is going! Very nice work!")
# comment4 =upload2.comments.create!(name: "Ali",content: "Big fan of your work ! Clean design !")
# comment5 =upload5.comments.create!(name: "Christin",content: "The look and feel of the website is so natural. Great job!")
# comment6 =upload2.comments.create!(name: "Nethsue",content: "This series is awesome! Great work on the simplicity, colors, and textures")
# comment7 =upload3.comments.create!(name: "Drew",content: "Everything about it is perfect! Looks so sharp!")
# comment8 =upload2.comments.create!(name: "Amrinder",content: "Love the clean looking UI, and Illustrations are fantastic!!!")
# comment9 =upload4.comments.create!(name: "Melley",content: "Absolutely stunning!")
# comment10 =upload5.comments.create!(name: "Bil",content: "Great job dude")
# comment11=upload6.comments.create!(name: "Mohammed",content: "amazing")
# comment12=upload7.comments.create!(name: "Patrick",content: "Absolutely love all the color variations")
# comment13=upload8.comments.create!(name: "Aaliyah",content: "Looks very organic and the layout really sets the background apart, nice work")
# comment14=upload9.comments.create!(name: "Spenser",content: "Really nice soft aesthetic going on here, nice work!")
# comment15=upload8.comments.create!(name: "Jack",content: "Fresh to death.")
# comment16=upload9.comments.create!(name: "Mcpherson",content: "The spacings are super bold here and there, but overall super clean and super nice work Gene. It is almost as nice as you. Almost.")
