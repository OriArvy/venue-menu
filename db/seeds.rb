# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

VenueReview.destroy_all
Booking.destroy_all
Venue.destroy_all
User.destroy_all


user_1 = User.create!(
  email: "matt@repay.com", password: "111111", name: "Matt", address: "Westminster, London SW1A 1AA", description: "I'm an Aussie, I'll fix anything")

user_2 = User.create!(
  email: "ben@repay.com", password: "111111", name: "Ben", address: "Westminster, London SW1A 1AA", description: "I will always find the right bulb for you")

user_3 = User.create!(
  email: "rokas@repay.com", password: "111111", name: "Rokas", address: "Westminster, London SW1A 1AA", description: "I will make you lose your voice")

user_4 = User.create!(
  email: "alex@repay.com", password: "111111", name: "Alex", address: "Westminster, London SW1A 1AA", description: "I will make you lose your voice")


venue_1 = Venue.create!(
  name: 'Luxurious Safari Tent',
  price: 97,
  rating: 3.2,
  address: "Langdale House, 11 Marshalsea Rd, London SE1 1EN",
  description: "Appreciate the thrill of the great outdoors from the comfort of one of our spacious tents. They are equipped with beds, outside furniture, electric lighting, a fridge and a handy kitchen, so you can enjoy your “back to nature” experience in style. Safari: Our modern tent, positioned on wooden decking, offering even more comfort. This elevated camping experience will appeal to both new and seasoned campers.",
  user: user_1)
  url = "https://images.unsplash.com/photo-1545153996-9419dd2acf66?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80"
  venue_1.remote_photo_url = url
  venue_1.save!

venue_2 = Venue.create!(
  name: 'Iconic Igloo',
  price: 237.2,
  rating: 4.6,
  address: "Lenangsveien 1483, Nord-lenangen, Norway",
  description: "Our inflatable igloos come in various sizes & styles, suitable for any outdoor party, wedding, corporate event, exhibition or festival. Our waterproof inflatable structures provide a jaw-dropping temporary shelter for your function, whatever the weather. The igloos can be installed quickly and easily by a small team, providing a striking, economical alternative to traditional marquee hire.",
  user: user_2)
  url2 = "https://images.unsplash.com/photo-1548278651-843b1d7431a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80)"
  venue_2.remote_photo_url = url2
  venue_2.save!

venue_3 = Venue.create!(
  name: 'El Barri Secret Garden',
  price: 892.23,
  rating: 4.7,
  address: "Grove Rd, London E3 5TB",
  description: "‘El Barri’ translates from the Catalan as ‘the neighbourhood’ but in the case of Masia farmhouses like ours it is also the traditional Catalan name for the enclosed exterior courtyard space in front of the house. With all the doors of Els Graners open it combines with El Barri to become an incredible multi-use event space that could seat 150+ for a wedding banquet, or even more standing, dancing, drinking or lounging, with a perfect mix of sun and shade keeping everyone happy. Perhaps you’d like to use one part for the dance floor, or add a stage for some live music, or transform another part into a comfy lounge area? Or perhaps you’d like to hold your ceremony in the courtyard? You decide.",
  user: user_3)
  url3 = "https://images.unsplash.com/photo-1425421598808-4a22ce59cc97?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80)"
  venue_3.remote_photo_url = url3
  venue_3.save!

venue_4 = Venue.create!(
  name: 'Berlin Club',
  price: 50.23,
  rating: 3.9,
  address: "Am Wriezener Bahnhof, 10243 Berlin, Germany",
  description: "The club is located in a former power plant (originally rented from the energy company Vattenfall[9]) in Friedrichshain, near Berlin Ostbahnhof railway station. In 2011 the building was bought from Vattenfall and is now owned outright. The building is remarkable for its enormous dimensions, and accommodates an 18 m-high (59 ft) dance floor and space for 1,500 guests. The interior's minimalist design is dominated by steel and concrete. The club contains a cavernous main room, as well as a smaller upstairs space called Panorama Bar. It is decorated with large-scale Wolfgang Tillmans photographs and features tall windows with a view of East Berlin. In 2007 only half of the building was in use. The club sports a Funktion-One sound system on its main dancefloor which, at the time it was installed in 2004, was one of the company's largest club installs. At its launch, the sound system comprised four Funktion-One Dance Stacks (consisting of a DS210, a DS215 and three F218), one Double Infrahorn (consisting of two Infrabass, one Doublehorn Extension), and two Resolution 2 for monitoring.",
  user: user_1)
  url4 = "https://images.unsplash.com/photo-1554138927-3058b7030d32?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80"
  venue_4.remote_photo_url = url4
  venue_4.save!

venue_5 = Venue.create!(
  name: 'Castle Of Your Dreams',
  price: 50000.23,
  rating: 4.9,
  address: "351 Chemin du Pied du Grepon, 74400 Chamonix-Mont-Blanc, France",
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

venue_8 = Venue.create!(
  name: 'Alex Old Caravan',
  price: 5.23,
  rating: 0.3,
  address: "Bath BA1 1UA, United Kingdom",
  description: "The science behind the dealer special edition is simple. Take a basic model of caravan, add a choice selection of extras from the options list, give it a unique personality with bespoke graphics and fabrics, and voilà! You have a van that offers mid-market appeal for a temptingly affordable price-tag. The eight-strong Marquis Lifestyle range follows this approach faithfully. Despite the Swift branding, it’s actually based on the Sprite and at the top of the range sits a pair of twin-axle, fixed-bed models. We spent two weeks in a six-berth Swift Lifestyle 6 FB – with a fixed nearside bed to the rear, a corner washroom, an offside dinette and a parallel front lounge – to find out whether the extra kit of this reworked Sprite Quattro FB turns it into a caravan fit for a touring family. The £1825 price difference between the Sprite and its Lifestyle clone initially seems hard to justify. But take a calculator to the Sprite options list and it soon makes sound financial sense, as well being more aesthetically pleasing. Standard kit includes items such as the Scorpion alloy wheels, an AKS 3004 hitch stabiliser, Secure wheel lock receivers, a door flyscreen, a microwave, scatter cushions and a radio/CD/MP3 player with iPod connectivity (all part of the Sprite’s £595 Diamond Pack). There's also a panoramic front sunroof (usually £365), an alarm (£260), and a 100W solar panel (you have to pay £275 for an 80W version on the Sprite). And that’s before you take into account the various other items that aren’t on the standard model’s options list, such as the uprated upholstery, the Omnivent, the external 230V mains socket and the gas barbecue point. The Swift Lifestyle 6 FB sits on a twin-axle galvanised-steel Al-Ko chassis. It uses Swift’s ‘SMART Plus’ construction which comprises ‘PURe’ timberless polyurethane body framing, styrofoam insulation and GRP outer skins for the floor and roof.",
  user: user_4)
  url8 = "https://images.unsplash.com/photo-1518111742073-ddc0b2ce79e8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_8.remote_photo_url = url8
  venue_8.save!

venue_9 = Venue.create!(
  name: 'Globetrotter Bus',
  price: 64.23,
  rating: 3.3,
  address: "Finlay St, Fulham, London SW6 6HB",
  description: Faker::Restaurant.description,
  user: user_1)
  url9 = "https://images.unsplash.com/photo-1515876305430-f06edab8282a?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80"
  venue_9.remote_photo_url = url9
  venue_9.save!

venue_10 = Venue.create!(
  name: 'Bens Mountain Hut',
  price: 128.23,
  rating: 4.3,
  address: "214 Avenue de la Plage, 74400 Chamonix-Mont-Blanc, France",
  description: Faker::Restaurant.description,
  user: user_1)
  url10 = "https://images.unsplash.com/photo-1524474881054-1e155f1138d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80"
  venue_10.remote_photo_url = url10
  venue_10.save!

venue_11 = Venue.create!(
  name: 'Hidden Treasure Lakehouse',
  price: 528.23,
  rating: 3.3,
  address: "69 Chemin de l'Hermine, 74400 Chamonix-Mont-Blanc, France",
  description: Faker::Restaurant.description,
  user: user_1)
  url11 = "https://images.unsplash.com/photo-1464146072230-91cabc968266?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_11.remote_photo_url = url11
  venue_11.save!

venue_12 = Venue.create!(
  name: 'Mountain Madness Hotel',
  price: 1228.28,
  rating: 2.7,
  address: "96 Rue du Lyret, 74400 Chamonix-Mont-Blanc, France",
  description: Faker::Restaurant.description,
  user: user_1)
  url12 = "https://images.unsplash.com/photo-1493275396257-7df0f22e0c88?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80"
  venue_12.remote_photo_url = url12
  venue_12.save!

venue_13 = Venue.create!(
  name: 'Lake House for Lords',
  price: 764.24,
  rating: 3.5,
  address: "174 Allée des Aiguilles, 74400 Chamonix-Mont-Blanc, France",
  description: Faker::Restaurant.description,
  user: user_1)
  url13 = "https://images.unsplash.com/photo-1470770841072-f978cf4d019e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_13.remote_photo_url = url13
  venue_13.save!

venue_14 = Venue.create!(
  name: 'Beach Restraunt Coco Jumbo',
  price: 564.24,
  rating: 2.5,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url14 = "https://images.unsplash.com/photo-1559293831-8a81f3bfc36c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80"
  venue_14.remote_photo_url = url14
  venue_14.save!

venue_15 = Venue.create!(
  name: 'The Queens Pool',
  price: 726.23,
  rating: 1.2,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url15 = "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_15.remote_photo_url = url15
  venue_15.save!

venue_16 = Venue.create!(
  name: 'Magic Mountain Shelter',
  price: 76.23,
  rating: 2.3,
  address: "45 Route de la Frasse, 74400 Chamonix-Mont-Blanc, France",
  description: Faker::Restaurant.description,
  user: user_1)
  url16 = "https://images.unsplash.com/photo-1465919292275-c60ba49da6ae?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1572&q=80"
  venue_16.remote_photo_url = url16
  venue_16.save!

venue_17 = Venue.create!(
  name: 'Hut of everlasting Peace',
  price: 783.53,
  rating: 3.5,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url17 = "https://images.unsplash.com/photo-1498176126716-a01bc267f662?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1658&q=80"
  venue_17.remote_photo_url = url17
  venue_17.save!


venue_18 = Venue.create!(
  name: 'Kings Library',
  price: 128.23,
  rating: 4.3,
  address: "Oval Rd, Camden Town, London NW1 7DZ",
  description: Faker::Restaurant.description,
  user: user_1)
  url18 = "https://images.unsplash.com/photo-1562932831-afcfe48b5786?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1089&q=80"
  venue_18.remote_photo_url = url18
  venue_18.save!

venue_19 = Venue.create!(
  name: 'Wooden Treasures',
  price: 1328.89,
  rating: 3.3,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url19 = "https://images.unsplash.com/photo-1470753937643-efeb931202a9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_19.remote_photo_url = url19
  venue_19.save!

venue_20 = Venue.create!(
  name: 'Sun Set Pool',
  price: 334.89,
  rating: 2.3,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url20 = "https://images.unsplash.com/photo-1546484488-2a1430996887?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80"
  venue_20.remote_photo_url = url20
  venue_20.save!

venue_21 = Venue.create!(
  name: 'Beach Hut',
  price: 334.89,
  rating: 2.3,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url21 = "https://images.unsplash.com/photo-1560359614-870d1a7ea91d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_21.remote_photo_url = url21
  venue_21.save!

venue_22 = Venue.create!(
  name: 'Private Pool Palace',
  price: 334.89,
  rating: 2.3,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url22 = "https://images.unsplash.com/photo-1523301343968-6a6ebf63c672?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_22.remote_photo_url = url22
  venue_22.save!

venue_23 = Venue.create!(
  name: 'Rokas Lake House',
  price: 334.89,
  rating: 2.3,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url23 = "https://images.unsplash.com/photo-1541453384904-208b45574f93?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_23.remote_photo_url = url23
  venue_23.save!

venue_24 = Venue.create!(
  name: 'Greenwhich Gardens',
  price: 833.49,
  rating: 4.2,
  address: "Brixton, London SW9 8SA",
  description: Faker::Restaurant.description,
  user: user_1)
  url24 = "https://images.unsplash.com/photo-1560183721-9bc1cf044b81?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_24.remote_photo_url = url24
  venue_24.save!

venue_25 = Venue.create!(
  name: 'Spencers Terrace',
  price: 9273.93,
  rating: 2.2,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url25 = "https://images.unsplash.com/photo-1493246318656-5bfd4cfb29b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_25.remote_photo_url = url25
  venue_25.save!

venue_26 = Venue.create!(
  name: 'London Docks Deck',
  price: 34273.93,
  rating: 4.2,
  address: "248 Westminster Bridge Rd, Lambeth, London SE1 7PD",
  description: Faker::Restaurant.description,
  user: user_1)
  url26 = "https://images.unsplash.com/photo-1561566302-67abce51c2c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_26.remote_photo_url = url26
  venue_26.save!

venue_27 = Venue.create!(
  name: 'Hoxton Theater',
  price: 483.32,
  rating: 4.1,
  address: "238-240 Bethnal Green Rd, London E2 0AA",
  description: Faker::Restaurant.description,
  user: user_1)
  url27 = "https://images.unsplash.com/photo-1507901747481-84a4f64fda6d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_27.remote_photo_url = url27
  venue_27.save!

venue_28 = Venue.create!(
  name: 'Pub of Lights',
  price: 34.32,
  rating: 2.1,
  address: "145-157 St John St, Farringdon, London EC1V 4PW",
  description: Faker::Restaurant.description,
  user: user_1)
  url28 = "https://images.unsplash.com/photo-1538488881038-e252a119ace7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_28.remote_photo_url = url28
  venue_28.save!

venue_29 = Venue.create!(
  name: 'Tower of London Bridge',
  price: 57304.32,
  rating: 4.2,
  address: "Address: 148 Tower Bridge Approach, London E1W 1LE",
  description: Faker::Restaurant.description,
  user: user_1)
  url29 = "https://images.unsplash.com/photo-1543799382-9a0208331ef7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_29.remote_photo_url = url29
  venue_29.save!

venue_30 = Venue.create!(
  name: 'No Church in the Wild',
  price: 128.23,
  rating: 4.3,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url30 = "https://images.unsplash.com/photo-1508985307703-52d13b2b06b3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_30.remote_photo_url = url30
  venue_30.save!

venue_31 = Venue.create!(
  name: 'Cinema Paris',
  price: 832.23,
  rating: 2.4,
  address: "Oxford St, Mayfair, London W1R 1FE",
  description: Faker::Restaurant.description,
  user: user_1)
  url31 = "https://images.unsplash.com/photo-1539436057426-5b7742ece8a2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_31.remote_photo_url = url31
  venue_31.save!

venue_32 = Venue.create!(
  name: 'Drink around the World Bar',
  price: 234.23,
  rating: 3.4,
  address: Faker::Address.full_address,
  description: Faker::Restaurant.description,
  user: user_1)
  url32 = "https://images.unsplash.com/photo-1491333078588-55b6733c7de6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  venue_32.remote_photo_url = url32
  venue_32.save!

venue_33 = Venue.create!(
  name: 'Visible Beauty Cabin',
  price: 423.53,
  rating: 2.5,
  address: "281 Chemin du Cry, 74400 Chamonix-Mont-Blanc, France",
  description: Faker::Restaurant.description,
  user: user_1)
  url33 = "https://images.unsplash.com/photo-1565036558162-e551c82632bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80"
  venue_33.remote_photo_url = url33
  venue_33.save!

booking_1 = Booking.create!(
 check_in: 20190501,
 check_out: 20190503,
 price: 236.23,
 payment_completed?: true,
 user: user_1,
 venue: venue_1)

booking_2 = Booking.create!(
 check_in: 20190701,
 check_out: 20190705,
 price: 736.23,
 payment_completed?: true,
 user: user_2,
 venue: venue_2)

booking_3 = Booking.create!(
 check_in: 20190803,
 check_out: 20190807,
 price: 2235.23,
 payment_completed?: false,
 user: user_3,
 venue: venue_3)

booking_4 = Booking.create!(
 check_in: 20170803,
 check_out: 20160804,
 price: 345.43,
 payment_completed?: false,
 user: user_2,
 venue: venue_8)

booking_5 = Booking.create!(
 check_in: 20180403,
 check_out: 20180604,
 price: 2335.64,
 payment_completed?: false,
 user: user_1,
 venue: venue_8)

booking_6 = Booking.create!(
 check_in: 20120403,
 check_out: 20130604,
 price: 23225.34,
 payment_completed?: false,
 user: user_2,
 venue: venue_8)

booking_7 = Booking.create!(
 check_in: 20190403,
 check_out: 20190404,
 price: 3.53,
 payment_completed?: true,
 user: user_3,
 venue: venue_8)

booking_8 = Booking.create!(
 check_in: 20190503,
 check_out: 20190504,
 price: 7343.53,
 payment_completed?: true,
 user: user_1,
 venue: venue_5)

booking_9 = Booking.create!(
 check_in: 20180503,
 check_out: 20180506,
 price: 9443.53,
 payment_completed?: true,
 user: user_1,
 venue: venue_5)

booking_10 = Booking.create!(
 check_in: 20130503,
 check_out: 20130506,
 price: 9443.53,
 payment_completed?: true,
 user: user_2,
 venue: venue_5)

booking_11 = Booking.create!(
 check_in: 20090303,
 check_out: 20090306,
 price: 15734.53,
 payment_completed?: true,
 user: user_3,
 venue: venue_5)

VenueReview.create!(
 rating: 4.3,
 description: Faker::Restaurant.review,
 booking: booking_1)

VenueReview.create!(
 rating: 4.7,
 description: Faker::Restaurant.review,
 booking: booking_2)

VenueReview.create!(
 rating: 4.9,
 description: Faker::Restaurant.review,
 booking: booking_3)

VenueReview.create!(
 rating: 1.1,
 description: Faker::Restaurant.review,
 booking: booking_4)

VenueReview.create!(
 rating: 1.7,
 description: Faker::Restaurant.review,
 booking: booking_5)

VenueReview.create!(
 rating: 2.1,
 description: Faker::Restaurant.review,
 booking: booking_6)

VenueReview.create!(
 rating: 1.3,
 description: Faker::Restaurant.review,
 booking: booking_7)

VenueReview.create!(
 rating: 4.9,
 description: Faker::Restaurant.review,
 booking: booking_8)

VenueReview.create!(
 rating: 4.9,
 description: Faker::Restaurant.review,
 booking: booking_9)

VenueReview.create!(
 rating: 4.8,
 description: Faker::Restaurant.review,
 booking: booking_10)

VenueReview.create!(
 rating: 4.9,
 description: Faker::Restaurant.review,
 booking: booking_11)



