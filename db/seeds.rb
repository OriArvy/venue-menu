# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Venue.destroy_all
User.destroy_all


user_1 = User.create!(
  email: "matt@repay.com", password: "111111", name: "Matt", address: "Westminster, London SW1A 1AA", description: "I'm an Aussie, I'll fix anything")

user_2 = User.create!(
  email: "ben@repay.com", password: "111111", name: "Ben", address: "Westminster, London SW1A 1AA", description: "I will always find the right bulb for you")

user_3 = User.create!(
  email: "rokas@repay.com", password: "111111", name: "Rokas", address: "Westminster, London SW1A 1AA", description: "I will make you lose your voice")

venue_1 = Venue.create!(
  name: 'Luxurious Safari Tent',
  photo: "https://images.unsplash.com/photo-1545153996-9419dd2acf66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80",
  price: 97,
  rating: 4.2,
  address: "Liddon Rd, Bromley BR1 2SR",
  description: "Appreciate the thrill of the great outdoors from the comfort of one of our spacious tents. They are equipped with beds, outside furniture, electric lighting, a fridge and a handy kitchen, so you can enjoy your “back to nature” experience in style. Safari: Our modern tent, positioned on wooden decking, offering even more comfort. This elevated camping experience will appeal to both new and seasoned campers.",
  user: user_1)

venue_2 = Venue.create!(
  name: 'Iconic Igloo',
  photo: "https://images.unsplash.com/photo-1548278651-843b1d7431a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80)",
  price: 237.2,
  rating: 4.2,
  address: "Igloo Disco, Golden Soul Leisure LTD, 71 Kirkstall Road, Leeds, LS3 1LH",
  description: "Our inflatable igloos come in various sizes & styles, suitable for any outdoor party, wedding, corporate event, exhibition or festival. Our waterproof inflatable structures provide a jaw-dropping temporary shelter for your function, whatever the weather. The igloos can be installed quickly and easily by a small team, providing a striking, economical alternative to traditional marquee hire.",
  user: user_2)

venue_3 = Venue.create!(
  name: 'El Barri Secret Garden',
  photo: "https://images.unsplash.com/photo-1425421598808-4a22ce59cc97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80)",
  price: 892.23,
  rating: 4.2,
  address: "Mas Casamitjana, Moià, Barcelona, 08180, Spain",
  description: "‘El Barri’ translates from the Catalan as ‘the neighbourhood’ but in the case of Masia farmhouses like ours it is also the traditional Catalan name for the enclosed exterior courtyard space in front of the house. With all the doors of Els Graners open it combines with El Barri to become an incredible multi-use event space that could seat 150+ for a wedding banquet, or even more standing, dancing, drinking or lounging, with a perfect mix of sun and shade keeping everyone happy. Perhaps you’d like to use one part for the dance floor, or add a stage for some live music, or transform another part into a comfy lounge area? Or perhaps you’d like to hold your ceremony in the courtyard? You decide.",
  user: user_3)

Booking.create!(
 check_in: 20190501,
 check_out: 20190503,
 price: 236.23,
 payment_completed?: true,
 user: user_1,
 venue: venue_1)

Booking.create!(
 check_in: 20190701,
 check_out: 20190705,
 price: 736.23,
 payment_completed?: true,
 user: user_2,
 venue: venue_2)

Booking.create!(
 check_in: 20190803,
 check_out: 20190807,
 price: 2235.23,
 payment_completed?: false,
 user: user_3,
 venue: venue_3)



