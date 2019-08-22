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
  price: 97,
  rating: 4.2,
  address: "Liddon Rd, Bromley BR1 2SR",
  description: "Appreciate the thrill of the great outdoors from the comfort of one of our spacious tents. They are equipped with beds, outside furniture, electric lighting, a fridge and a handy kitchen, so you can enjoy your “back to nature” experience in style. Safari: Our modern tent, positioned on wooden decking, offering even more comfort. This elevated camping experience will appeal to both new and seasoned campers.",
  user: user_1)
  url = "https://images.unsplash.com/photo-1545153996-9419dd2acf66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80"
  venue_1.remote_photo_url = url
  venue_1.save!

venue_2 = Venue.create!(
  name: 'Iconic Igloo',
  price: 237.2,
  rating: 4.2,
  address: "Lenangsveien 1483, Nord-lenangen, Norway",
  description: "Our inflatable igloos come in various sizes & styles, suitable for any outdoor party, wedding, corporate event, exhibition or festival. Our waterproof inflatable structures provide a jaw-dropping temporary shelter for your function, whatever the weather. The igloos can be installed quickly and easily by a small team, providing a striking, economical alternative to traditional marquee hire.",
  user: user_2)
  url2 = "https://images.unsplash.com/photo-1548278651-843b1d7431a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80)"
  venue_2.remote_photo_url = url2
  venue_2.save!

venue_3 = Venue.create!(
  name: 'El Barri Secret Garden',
  price: 892.23,
  rating: 4.2,
  address: "Grove Rd, London E3 5TB",
  description: "‘El Barri’ translates from the Catalan as ‘the neighbourhood’ but in the case of Masia farmhouses like ours it is also the traditional Catalan name for the enclosed exterior courtyard space in front of the house. With all the doors of Els Graners open it combines with El Barri to become an incredible multi-use event space that could seat 150+ for a wedding banquet, or even more standing, dancing, drinking or lounging, with a perfect mix of sun and shade keeping everyone happy. Perhaps you’d like to use one part for the dance floor, or add a stage for some live music, or transform another part into a comfy lounge area? Or perhaps you’d like to hold your ceremony in the courtyard? You decide.",
  user: user_3)
  url3 = "https://images.unsplash.com/photo-1425421598808-4a22ce59cc97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80)"
  venue_3.remote_photo_url = url3
  venue_3.save!

venue_4 = Venue.create!(
  name: 'Berlin Club',
  price: 50.23,
  rating: 4.9,
  address: "Am Wriezener Bahnhof, 10243 Berlin, Germany",
  description: "The club is located in a former power plant (originally rented from the energy company Vattenfall[9]) in Friedrichshain, near Berlin Ostbahnhof railway station. In 2011 the building was bought from Vattenfall and is now owned outright. The building is remarkable for its enormous dimensions, and accommodates an 18 m-high (59 ft) dance floor and space for 1,500 guests. The interior's minimalist design is dominated by steel and concrete. The club contains a cavernous main room, as well as a smaller upstairs space called Panorama Bar. It is decorated with large-scale Wolfgang Tillmans photographs and features tall windows with a view of East Berlin. In 2007 only half of the building was in use. The club sports a Funktion-One sound system on its main dancefloor which, at the time it was installed in 2004, was one of the company's largest club installs. At its launch, the sound system comprised four Funktion-One Dance Stacks (consisting of a DS210, a DS215 and three F218), one Double Infrahorn (consisting of two Infrabass, one Doublehorn Extension), and two Resolution 2 for monitoring.",
  user: user_1)
  url4 = "https://images.unsplash.com/photo-1554138927-3058b7030d32?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80"
  venue_4.remote_photo_url = url4
  venue_4.save!

venue_5 = Venue.create!(
  name: 'Castle Of Your Dreams',
  price: 5000.23,
  rating: 2.3,
  address: "Neuschwansteinstraße 20, 87645 Schwangau, Germany",
  description: "The palace can be regarded as typical for nineteenth-century architecture. The shapes of Romanesque (simple geometric figures such as cuboids and semicircular arches), Gothic (upward-pointing lines, slim towers, delicate embellishments) and Byzantine architecture and art (the Throne Hall décor) were mingled in an eclectic fashion and supplemented with 19th-century technical achievements. The Patrona Bavariae and Saint George on the court face of the Palas (main building) are depicted in the local Lüftlmalerei style, a fresco technique typical for Allgäu farmers' houses, while the unimplemented drafts for the Knights' House gallery foreshadow elements of Art Nouveau.[22] Characteristic of Neuschwanstein's design are theatre themes: Christian Jank drew on coulisse drafts from his time as a scenic painter. The basic style was originally planned to be neo-Gothic but the palace was primarily built in Romanesque style in the end. The operatic themes moved gradually from Tannhäuser and Lohengrin to Parsifal. ",
  user: user_1)
  url5 = "https://images.unsplash.com/photo-1495316364083-b5916626072e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80"
  venue_5.remote_photo_url = url5
  venue_5.save!

venue_6 = Venue.create!(
  name: 'Fyre Island',
  price: 10.23,
  rating: 1.3,
  address: "Isle of Dogs, London, UK",
  description: "The Isle of Dogs is a large peninsula bounded on three sides by a large meander in the River Thames in East London, England, which includes the Poplar, Millwall, Limehouse and Canary Wharf districts.",
  user: user_1)
  url6 = "https://images.unsplash.com/photo-1505881502353-a1986add3762?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1562&q=80"
  venue_6.remote_photo_url = url6
  venue_6.save!

venue_7 = Venue.create!(
  name: 'Matts Super Yacht',
  price: 128.23,
  rating: 4.3,
  address: "Temple Pier, Victoria Embankment, London WC2R 2PN",
  description: "Come and have an unforgettable evening at The Yacht London, a unique restaurant and event space located on the river in the heart of London.",
  user: user_1)
  url7 = "https://images.unsplash.com/photo-1515471216966-c8521f081224?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80"
  venue_7.remote_photo_url = url7
  venue_7.save!

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



