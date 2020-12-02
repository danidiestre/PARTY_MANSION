# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "open-uri"
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Mansion.destroy_all
User.destroy_all
ana = User.create(email: "ana@gmail.com", password: "password")
rocio = User.create(email: 'rocio@gmail.com', password: 'password')
dani = User.create(email: "dani@gmail.com", password: "password")
bruna = User.create(email: "bruna@gmail.com", password: "password")
jaume = User.create(email: "jaume@gmail.com", password: "password")

file_balmes = URI.open('https://images.unsplash.com/photo-1505843795480-5cfb3c03f6ff?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1491&q=80')
balmes = Mansion.create(
  address: 'Carrer Balmes 382',
  price: 800,
  capacity: 300,
  title: 'Luxurious mansion in Balmes',
  description:'Serve up some tapas at the breakfast bar before breaking bread on the outdoor patio at your private golden-hued villa. With an open wall connecting the veranda to the interior great room, you’ll be able to seamlessly move between relaxation and entertainment. Kupuri Beach and Punta de Mita Village are both just minutes away, and an included golf cart makes getting there half the fun. Copyright © Mansions B&B. All rights reserved.',
  user: ana
)
balmes.photo.attach(io: file_balmes, filename: 'balmes.png', content_type: 'image/png')


file_muntaner = URI.open('https://images.unsplash.com/photo-1566908829550-e6551b00979b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1349&q=80')
muntaner = Mansion.create(
  address: 'Carrer Muntaner 192',
  price: 10000,
  capacity: 100,
  title: 'Whole building on Muntaner',
  description:'Discover an oasis of luxury and style at the very heart of Barcelona. The beautiful infinity-edge swimming pool with opposing contours sits right next to the pristine sands of a picture-perfect beach dotted with palm trees. Or enjoy a soothing soak in the bubbles of the outdoor hot tub. After all, you only live once, let it be in great style. Copyright © Mansions B&B. All rights reserved.',
  user: rocio
)
muntaner.photo.attach(io: file_muntaner, filename: 'muntaner.png', content_type: 'image/png')

file_plaza = URI.open('https://images.unsplash.com/photo-1573599852326-2d4da0bbe613?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1281&q=80')

plaza = Mansion.create(
  address: 'Plaza Catalunya 1',
  price: 2000,
  capacity: 500,
  title: 'Penthouse luxury Plaza Catalunya',
  description:'A fantastic location, right next to the ramblas with an amazing view of the city. Be dazzled by the bright splendor of this hillside villa, which overlooks the 93 year old Terramar golf club. The sunny yet sheltered deck, complete with sparkling pool and recliners lets guests bask in Mediterranean sunrises and fresh sea breezes. Numerous bedrooms, an impressive aquarium plus fully-stocked bar add to the appeal, with easy access to the medieval heart and sandy beaches of Barcelona. Copyright © Mansions B&B. All rights reserved.',
  user: jaume
  )
plaza.photo.attach(io: file_plaza, filename: 'plaza.png', content_type: 'image/png')


file_pearson = URI.open('https://images.unsplash.com/photo-1572718329684-bd59a824d1b9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1341&q=80')

pearson = Mansion.create(
  address: 'Avenida Pearson',
  price: 1200,
  capacity: 200,
  title: '200 person Mansion in Pedralbes',
  description:' Get an amazing view of the city with this incredible mansion all the way up in Pedralbes hidden away. Practice putting on the finely manicured grounds of this grand white two-story hacienda with its upper balcony running the entire width and the modern architecture representing one of Catalan’s finest villas. The private kidney pool seems right out of a David Hockney painting. Open lounge areas, alfresco dining areas, swing chairs, and play areas pepper the generous lawns. Copyright © Mansions B&B. All rights reserved.',
  user: dani
)

pearson.photo.attach(io: file_pearson, filename: 'pearson.png', content_type: 'image/png')
file_palamos = URI.open('https://images.unsplash.com/photo-1603460217649-decbe0624f54?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1348&q=80')


palamos = Mansion.create(
  address: 'Palamos carrer de laigua',
  price: 1500,
  capacity: 50,
  title: 'Costa Brava Miedeval Castle',
  description:'Bring all your friends and have an amazing experience in this Costa Brava castle! Whether you’re in town for business or pleasure, or both, Palamos has lots to see and do. Conveniently located a short walk from the cities facilities, this mansion is the perfect home base for exploring this beautiful city. With two bedrooms and a guest area, there are total accommodations for five, making it perfect for a small family, or group of friends or colleagues. Copyright © Mansions B&B. All rights reserved.',
  user: bruna
)
palamos.photo.attach(io: file_palamos, filename: 'palamos.png', content_type: 'image/png')
