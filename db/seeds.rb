User.delete_all
Pokemon.delete_all
Spot.delete_all
World.delete_all

(1..151).each do |pokemon|
  response = HTTParty.get("http://pokeapi.co/api/v2/pokemon/#{pokemon}/")
  results = JSON.parse(response.body)

  pokemon = Pokemon.new({
    name: results["forms"][0]["name"].capitalize,
    image: results["sprites"]["front_default"],
    poketype: results["types"][0]["type"]["name"].capitalize,
    pokedex_number: results["game_indices"][0]["game_index"]
    })
    pokemon.save
    puts "#{pokemon['name']} #{pokemon['poketype']} #{pokemon['pokedex_number']}"
  end


u1 = User.create!(username: "Bob", email: "bob@gmail.com", password: "password", password_confirmation: "password")
u2 = User.create!(username: "james", email: "james@gmail.com", password: "password", password_confirmation: "password" )
u3 = User.create!(username: "hugo", email: "hugo@gmail.com", password: "password", password_confirmation: "password" )

w1 = World.create!(title: "Ancient Pyramid", image: "https://user-images.githubusercontent.com/13720623/30071740-cfdd9cd0-925f-11e7-8123-25fc98165d31.jpg")
w2 = World.create!(title: "Mountain", image: "https://user-images.githubusercontent.com/13720623/30108331-d658be1a-92f9-11e7-914a-6ce28e63fa6f.jpg")
w3 = World.create!(title: "Space Station", image: "https://user-images.githubusercontent.com/13720623/30108346-e36dfb92-92f9-11e7-9a74-a5987e7974db.jpg")
w4 = World.create!(title: "House", image: "https://user-images.githubusercontent.com/13720623/30108362-f162babc-92f9-11e7-8797-63d2c960ea6e.jpg")


s1 = Spot.create!(world_id: w1.id, top:210, left:100)
s2 = Spot.create!(world_id: w1.id, top:240, left:170)
s3 = Spot.create!(world_id: w1.id, top:260, left:320)
s4 = Spot.create!(world_id: w1.id, top:290, left:450)

s1 = Spot.create!(world_id: w2.id, top:260, left:30)
s2 = Spot.create!(world_id: w2.id, top:300, left:200)
s3 = Spot.create!(world_id: w2.id, top:400, left:200)

s1 = Spot.create!(world_id: w3.id, top:300, left:230)
s1 = Spot.create!(world_id: w3.id, top:310, left:440)

s1 = Spot.create!(world_id: w4.id, top:420, left:310)
