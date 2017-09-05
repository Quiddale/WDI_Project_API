User.delete_all
World.delete_all

u1 = User.create!(username: "Bob", email: "bob@gmail.com", password: "password", password_confirmation: "password")
u2 = User.create!(username: "james", email: "james@gmail.com", password: "password", password_confirmation: "password" )
u3 = User.create!(username: "hugo", email: "hugo@gmail.com", password: "password", password_confirmation: "password" )

w1 = World.create!(title: "triangle", image: "https://user-images.githubusercontent.com/13720623/30058673-ef8ec170-9233-11e7-9f01-b150e38d8d16.jpg")
