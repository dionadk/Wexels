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
diona = User.create!(email: 'diona@gmail.com', password: 'password')
ryan = User.create!(email: 'ryan@gmail.com', password: 'password')


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
tag2 = Tag.create!(name: "home",pic_id: upload2.id, user: ethan)
tag2 =Tag.create!(name: "dashboard",pic_id: upload3.id, user: kurien)
tag3 =Tag.create!(name: "ui",pic_id: upload4.id, user: kurien)
tag4 =Tag.create!(name: "brand",pic_id: upload4.id, user: kurien)
tag5 =Tag.create!(name: "phone",pic_id: upload1.id, user: kurien)
tag6 =Tag.create!(name: "website",pic_id: upload5.id, user: kurien)
tag7 =Tag.create!(name: "marketing",pic_id: upload3.id, user: kurien)
tag8 =Tag.create!(name: "blog",pic_id: upload5.id, user: kurien)
tag9 =Tag.create!(name: "phone",pic_id: upload1.id, user: kurien)
tag10 =Tag.create!(name: "website",pic_id: upload2.id, user: ethan)
tag11=Tag.create!(name: "marketing",pic_id: upload8.id, user: ethan)
tag12=Tag.create!(name: "portfolio",pic_id: upload9.id, user: ethan)
tag13=Tag.create!(name: "dashboard",pic_id: upload6.id, user: ethan)
tag14=Tag.create!(name: "ui",pic_id: upload5.id, user: kurien)
tag15=Tag.create!(name: "brand",pic_id: upload2.id, user: ethan)
tag16=Tag.create!(name: "phone",pic_id: upload1.id, user: kurien)
tag17=Tag.create!(name: "website",pic_id: upload4.id, user: kurien)


#comment seed
comment1 = Comment.create!(name: "Jenny",content: "Clean and simple! I like it.",user: kurien,pic_id: upload1.id)
comment2 =Comment.create!(name: "Max",content: "Very nice work. Fresh, clean, modern, very good UX as well. Love the whole portfolio!",user: ethan,pic_id: upload2.id)
comment3 =Comment.create!(name: "James",content: "So tidy and well organized, I like where this is going! Very nice work!",user: kurien,pic_id: upload3.id)
comment4 =Comment.create!(name: "Ali",content: "Big fan of your work ! Clean design !",user: kurien,pic_id: upload5.id)
comment5 =Comment.create!(name: "Christin",content: "The look and feel of the website is so natural. Great job!",user: kurien,pic_id: upload4.id)
comment6 =Comment.create!(name: "Nethsue",content: "This series is awesome! Great work on the simplicity, colors, and textures",user: kurien,pic_id: upload5.id)
comment7 =Comment.create!(name: "Drew",content: "Everything about it is perfect! Looks so sharp!",user: kurien,pic_id: upload1.id)
comment8 =Comment.create!(name: "Amrinder",content: "Love the clean looking UI, and Illustrations are fantastic!!!",user: ethan,pic_id: upload2.id)
comment9 =Comment.create!(name: "Melley",content: "Absolutely stunning!",user: ethan,pic_id: upload6.id)
comment10 =Comment.create!(name: "Bil",content: "Great job dude",user: ethan,pic_id: upload7.id)
comment11=Comment.create!(name: "Mohammed",content: "amazing",user: ethan,pic_id: upload8.id)
comment12=Comment.create!(name: "Patrick",content: "Absolutely love all the color variations",user: ethan,pic_id: upload9.id)
comment13=Comment.create!(name: "Aaliyah",content: "Looks very organic and the layout really sets the background apart, nice work",user: ethan,pic_id: upload2.id)
comment14=Comment.create!(name: "Spenser",content: "Really nice soft aesthetic going on here, nice work!",user: ethan,pic_id: upload6.id)
comment15=Comment.create!(name: "Jack",content: "Fresh to death.",user: kurien,pic_id: upload3.id)
comment16=Comment.create!(name: "Mcpherson",content: "The spacings are super bold here and there, but overall super clean and super nice work Gene. It is almost as nice as you. Almost.",user: kurien,pic_id: upload4.id)

#like seed
like1 = Like.create!(pic_id:upload1.id,user:kurien)
like2 = Like.create!(pic_id:upload2.id,user:ethan)
like3 = Like.create!(pic_id:upload5.id,user:kurien,num_likes:0)
like4 = Like.create!(pic_id:upload6.id,user:ethan,num_likes:0)
like5 = Like.create!(pic_id:upload3.id,user:kurien,num_likes:0)
like6 = Like.create!(pic_id:upload7.id,user:diona,num_likes:0)
like7 = Like.create!(pic_id:upload4.id,user:kurien,num_likes:0)
like8 = Like.create!(pic_id:upload8.id,user:ryan,num_likes:0)
like9 = Like.create!(pic_id:upload1.id,user:kurien,num_likes:0)
like10 = Like.create!(pic_id:upload2.id,user:ethan,num_likes:0)
like11 = Like.create!(pic_id:upload3.id,user:kurien,num_likes:0)
like12 = Like.create!(pic_id:upload4.id,user:ethan,num_likes:0)
like13 = Like.create!(pic_id:upload5.id,user:diona,num_likes:0)
like14 = Like.create!(pic_id:upload6.id,user:ryan,num_likes:0)
like15 = Like.create!(pic_id:upload7.id,user:diona,num_likes:0)
like16 = Like.create!(pic_id:upload8.id,user:ryan,num_likes:0)
