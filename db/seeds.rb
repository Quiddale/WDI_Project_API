User.delete_all
World.delete_all

u1 = User.create!(username: "Bob", email: "bob@gmail.com", password: "password", password_confirmation: "password")
u2 = User.create!(username: "james", email: "james@gmail.com", password: "password", password_confirmation: "password" )
u3 = User.create!(username: "hugo", email: "hugo@gmail.com", password: "password", password_confirmation: "password" )

w1 = World.create!(title: "triangle", image: "https://imgur.com/a/RmsVl")
