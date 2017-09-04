User.delete_all
World.delete_all

u1 = User.create!(username: "Bob", email: "bob@gmail.com", password: "password", password_confirmation: "password")
u2 = User.create!(username: "james", email: "james@gmail.com", password: "password", password_confirmation: "password" )
u3 = User.create!(username: "hugo", email: "hugo@gmail.com", password: "password", password_confirmation: "password" )

w1 = World.create!(title: "house", image: "/Users/quiddaleosullivan/Development/WDI_PROJECT4/WDI_PROJECT4_CLIENT/src/images/House_1.jpg")
w2 = World.create!(title: "mountin", image: "/Users/quiddaleosullivan/Development/WDI_PROJECT4/WDI_PROJECT4_CLIENT/src/images/Mountin_1.jpg")
w3 = World.create!(title: "space_station", image: "/Users/quiddaleosullivan/Development/WDI_PROJECT4/WDI_PROJECT4_CLIENT/src/images/Station_1.jpg")
w4 = World.create!(title: "triangle", image: "/Users/quiddaleosullivan/Development/WDI_PROJECT4/WDI_PROJECT4_CLIENT/src/images/Triangle_1.jpg")
