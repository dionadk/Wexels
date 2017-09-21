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
baily = User.create!(email: 'baily@gmail.com', password: 'password')


# design seed
upload1 =kurien.pics.create!(title: "New Adventures",body: "Latest design",img_url:"https://imgur.com/e7jGl3X.jpg",uploaded_by:"Albert")
upload2 = ethan.pics.create!(title: "Oliver Russel",body: "Sales design",img_url:"https://imgur.com/mkcl4xN.jpg",uploaded_by:"Oliver Russel")
upload14 = baily.pics.create!(title: "Stormy Hues",body: "Color Combinations",img_url:"https://i.imgur.com/LW1nYBd.jpg",uploaded_by:"Natasha Pirtr")
upload14 = baily.pics.create!(title: "Clean and collegiate",body: "Color Combinations",img_url:"https://i.imgur.com/ogQIxvw.jpg",uploaded_by:"Janidhj Manny")
upload15 = baily.pics.create!(title: "Behind the Scenes",body: "Color Combinations",img_url:"https://i.imgur.com/z15G3Aw.jpg",uploaded_by:"Drew Barrymore")
upload16 = baily.pics.create!(title: "Modern and Bold",body: "Color Combinations",img_url:"https://i.imgur.com/8VujqPS.jpg",uploaded_by:"Janidhj Manny")
upload3 = kurien.pics.create!(title: "Freash and lively",body: "Food Blogging",img_url:"https://imgur.com/Iqc8HsM.jpg",uploaded_by:"Clare")
upload4 = kurien.pics.create!(title: "Antique and clean",body: "Sleek Design",img_url:"https://i.imgur.com/823keCF.jpg",uploaded_by:"Vandy")
upload5 = kurien.pics.create!(title: "Retro Inspired",body: "Sleek Design",img_url:"https://imgur.com/S9IqgkY.jpg",uploaded_by:"Django")
upload6 = ethan.pics.create!(title: "Vandi",body: "Dashboard Design",img_url:"https://i.imgur.com/fS57NUQ.jpg",uploaded_by:"Benjamin Bucker")
upload7 = ethan.pics.create!(title: "UI Branding",body: "Design Mockup",img_url:"https://i.imgur.com/hKXhfvI.jpg",uploaded_by:"Caprio 'D Stan'")
upload8 = ethan.pics.create!(title: "Digital Marketing",body: "Marketing Design",img_url:"https://i.imgur.com/KzqLe6K.jpg",uploaded_by:"Juvin Olivia")
upload9 = ethan.pics.create!(title: "UI Design",body: "Banking Website",img_url:"https://i.imgur.com/1tyMbOe.png",uploaded_by:"Robert Pritz")
upload10 = baily.pics.create!(title: "UI Design",body: "Healthcare Website",img_url:"https://i.imgur.com/A7LfGmn.jpg",uploaded_by:"Baily Dcosta")
upload11 = baily.pics.create!(title: "Cool and Calm",body: "Healthcare Website",img_url:"https://i.imgur.com/5Hh04N7.jpg",uploaded_by:"Baily Dcosta")
upload12 = baily.pics.create!(title: "Colorful without clashing",body: "Modern Website",img_url:"https://i.imgur.com/wzmH3xE.jpg",uploaded_by:"Baily Dcosta")
upload13 = baily.pics.create!(title: "Vintage Charm",body: "Sports Website",img_url:"https://i.imgur.com/XvsnAvp.jpg",uploaded_by:"Baily Dcosta")


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
tag14=Tag.create!(name: "ui design",pic_id: upload5.id, user: kurien)
tag15=Tag.create!(name: "brand design",pic_id: upload2.id, user: ethan)
tag16=Tag.create!(name: "phone design",pic_id: upload1.id, user: kurien)
tag17=Tag.create!(name: "website",pic_id: upload4.id, user: kurien)
tag18=Tag.create!(name: "dashboard",pic_id: upload6.id, user: ethan)
tag19=Tag.create!(name: "ui",pic_id: upload10.id, user: kurien)
tag20=Tag.create!(name: "brand",pic_id: upload11.id, user: ethan)
tag21=Tag.create!(name: "phone",pic_id: upload12.id, user: kurien)
tag22=Tag.create!(name: "website",pic_id: upload13.id, user: kurien)
tag23=Tag.create!(name: "color",pic_id: upload14.id, user: ethan)
tag24=Tag.create!(name: "color",pic_id: upload15.id, user: baily)
tag25=Tag.create!(name: "color",pic_id: upload16.id, user: baily)
tag26=Tag.create!(name: "layout",pic_id: upload12.id, user: baily)
tag27=Tag.create!(name: "website",pic_id: upload13.id, user: baily)
tag28=Tag.create!(name: "design",pic_id: upload15.id, user: baily)
tag29=Tag.create!(name: "ui",pic_id: upload16.id, user: baily)
tag30=Tag.create!(name: "brand",pic_id: upload12.id, user: baily)
tag31=Tag.create!(name: "blog",pic_id: upload13.id, user: baily)


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
like5 = Like.create!(pic_id:upload3.id,user:baily,num_likes:0)
like6 = Like.create!(pic_id:upload7.id,user:diona,num_likes:0)
like7 = Like.create!(pic_id:upload4.id,user:baily,num_likes:0)
like8 = Like.create!(pic_id:upload8.id,user:ryan,num_likes:0)
like9 = Like.create!(pic_id:upload1.id,user:kurien,num_likes:0)
like10 = Like.create!(pic_id:upload2.id,user:ethan,num_likes:0)
like11 = Like.create!(pic_id:upload3.id,user:kurien,num_likes:0)
like12 = Like.create!(pic_id:upload4.id,user:ethan,num_likes:0)
like13 = Like.create!(pic_id:upload5.id,user:baily,num_likes:0)
like14 = Like.create!(pic_id:upload6.id,user:ryan,num_likes:0)
like15 = Like.create!(pic_id:upload7.id,user:diona,num_likes:0)
like16 = Like.create!(pic_id:upload8.id,user:baily,num_likes:0)
like17 = Like.create!(pic_id:upload10.id,user:diona,num_likes:0)
like18 = Like.create!(pic_id:upload11.id,user:ryan,num_likes:0)
like19 = Like.create!(pic_id:upload12.id,user:diona,num_likes:0)
like20 = Like.create!(pic_id:upload13.id,user:ryan,num_likes:0)
