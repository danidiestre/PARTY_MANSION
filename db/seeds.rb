# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require "open-uri"
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Mansion.destroy_all
User.destroy_all

avatar_ana = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQES3TPGourBwg/profile-displayphoto-shrink_800_800/0/1517466023378?e=1612396800&v=beta&t=rrMXlDr6agrpQS0_YnrFKHCxuWHfpaxhW2sDoMtiVR4')
ana = User.create(email: "ana@gmail.com", password: "password")
ana.avatar.attach(io: avatar_ana, filename: 'ana.png', content_type: 'image/png')

rocio = User.create(email: 'rocio@gmail.com', password: 'password')
avatar_rocio = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQHWSUqNdAXHcQ/profile-displayphoto-shrink_800_800/0/1596640241152?e=1612396800&v=beta&t=MXHi43SBRu6f1nRNdK06yfoTH3khbirL4fLfzMH1pbU')
rocio.avatar.attach(io: avatar_rocio, filename: 'rocio.png', content_type: 'image/png')

dani = User.create(email: "dani@gmail.com", password: "password")
avatar_dani = URI.open('https://media-exp1.licdn.com/dms/image/C4D03AQEK9HaUmStSVA/profile-displayphoto-shrink_800_800/0?e=1612396800&v=beta&t=dgCFjJPjYrJOVYgifWDWqACUU2Rvg2wneJUVIFO-jb0')
dani.avatar.attach(io: avatar_dani, filename: 'dani.png', content_type: 'image/png')

bruna = User.create(email: "bruna@gmail.com", password: "password")
avatar_bruna = URI.open('https://scontent-mad1-1.xx.fbcdn.net/v/t1.0-9/86697044_3433571363324662_8857190224778756096_o.jpg?_nc_cat=104&ccb=2&_nc_sid=09cbfe&_nc_ohc=2TkTxmqmjCYAX9x3D4V&_nc_ht=scontent-mad1-1.xx&oh=3e33322ca309d6094de856549efdffe5&oe=5FEFE3BD')
bruna.avatar.attach(io: avatar_bruna, filename: 'bruna.png', content_type: 'image/png')

jaume = User.create(email: "jaume@gmail.com", password: "password")
avatar_jaume = URI.open('https://scontent-mad1-1.xx.fbcdn.net/v/t1.0-9/102261476_4326706187354465_4726682033989961974_n.jpg?_nc_cat=102&ccb=2&_nc_sid=09cbfe&_nc_ohc=g5gFygsSFvsAX8dd2L9&_nc_ht=scontent-mad1-1.xx&oh=8463412a9d20c5e0835fc02d5acb70a7&oe=5FEE13D7')
jaume.avatar.attach(io: avatar_jaume, filename: 'jaume.png', content_type: 'image/png')

balmes = Mansion.create(
  address: 'Carrer Balmes 382',
  price: 800,
  capacity: 300,
  title: 'Luxurious mansion in Balmes',
  description:'Serve up some tapas at the breakfast bar before breaking bread on the outdoor patio at your private golden-hued villa. With an open wall connecting the veranda to the interior great room, you’ll be able to seamlessly move between relaxation and entertainment. Kupuri Beach and Punta de Mita Village are both just minutes away, and an included golf cart makes getting there half the fun. Copyright © Mansions B&B. All rights reserved.',
  user: ana
)
file_balmes = URI.open('https://images.unsplash.com/photo-1505843795480-5cfb3c03f6ff?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1491&q=80')
balmes.photos.attach(io: file_balmes, filename: 'balmes.png', content_type: 'image/png')
file_balmes = URI.open('https://images.unsplash.com/photo-1600585152220-90363fe7e115?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
balmes.photos.attach(io: file_balmes, filename: 'balmes.png', content_type: 'image/png')
file_balmes = URI.open('https://images.unsplash.com/photo-1503174971373-b1f69850bded?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1687&q=80')
balmes.photos.attach(io: file_balmes, filename: 'balmes.png', content_type: 'image/png')


muntaner = Mansion.create(
  address: 'Carrer Muntaner 192',
  price: 10000,
  capacity: 100,
  title: 'Whole building on Muntaner',
  description:'Discover an oasis of luxury and style at the very heart of Barcelona. The beautiful infinity-edge swimming pool with opposing contours sits right next to the pristine sands of a picture-perfect beach dotted with palm trees. Or enjoy a soothing soak in the bubbles of the outdoor hot tub. After all, you only live once, let it be in great style. Copyright © Mansions B&B. All rights reserved.',
  user: rocio
)
file_muntaner = URI.open('https://images.unsplash.com/photo-1519899602147-8d3b53e450b9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2266&q=80')
muntaner.photos.attach(io: file_muntaner, filename: 'muntaner.png', content_type: 'image/png')
file_muntaner = URI.open('https://images.unsplash.com/flagged/photo-1573168710465-7f7da9a23a15?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80')
muntaner.photos.attach(io: file_muntaner, filename: 'muntaner.png', content_type: 'image/png')
file_muntaner = URI.open('https://images.unsplash.com/photo-1516455590571-18256e5bb9ff?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
muntaner.photos.attach(io: file_muntaner, filename: 'muntaner.png', content_type: 'image/png')



plaza = Mansion.create(
  address: 'Plaza Catalunya 1',
  price: 2000,
  capacity: 500,
  title: 'Penthouse luxury Plaza Catalunya',
  description:'A fantastic location, right next to the ramblas with an amazing view of the city. Be dazzled by the bright splendor of this hillside villa, which overlooks the 93 year old Terramar golf club. The sunny yet sheltered deck, complete with sparkling pool and recliners lets guests bask in Mediterranean sunrises and fresh sea breezes. Numerous bedrooms, an impressive aquarium plus fully-stocked bar add to the appeal, with easy access to the medieval heart and sandy beaches of Barcelona. Copyright © Mansions B&B. All rights reserved.',
  user: jaume
  )
file_plaza = URI.open('https://images.unsplash.com/photo-1468824357306-a439d58ccb1c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1554&q=80')
plaza.photos.attach(io: file_plaza, filename: 'plaza.png', content_type: 'image/png')
file_plaza = URI.open('https://images.unsplash.com/photo-1600563440091-ab11f30e01d3?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80')
plaza.photos.attach(io: file_plaza, filename: 'plaza.png', content_type: 'image/png')
file_plaza = URI.open('https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2550&q=80')
plaza.photos.attach(io: file_plaza, filename: 'plaza.png', content_type: 'image/png')


pearson = Mansion.create(
  address: 'Avenida Pearson',
  price: 1200,
  capacity: 200,
  title: '200 person Mansion in Pedralbes',
  description:' Get an amazing view of the city with this incredible mansion all the way up in Pedralbes hidden away. Practice putting on the finely manicured grounds of this grand white two-story hacienda with its upper balcony running the entire width and the modern architecture representing one of Catalan’s finest villas. The private kidney pool seems right out of a David Hockney painting. Open lounge areas, alfresco dining areas, swing chairs, and play areas pepper the generous lawns. Copyright © Mansions B&B. All rights reserved.',
  user: dani
)
file_pearson = URI.open('https://images.unsplash.com/photo-1553524790-5872ab69e309?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
pearson.photos.attach(io: file_pearson, filename: 'pearson.png', content_type: 'image/png')
file_pearson = URI.open('https://images.unsplash.com/photo-1591924265219-1ea350ab7279?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80')
pearson.photos.attach(io: file_pearson, filename: 'pearson.png', content_type: 'image/png')
file_pearson = URI.open('https://images.unsplash.com/photo-1565182999561-18d7dc61c393?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
pearson.photos.attach(io: file_pearson, filename: 'pearson.png', content_type: 'image/png')


palamos = Mansion.create(
  address: 'Palamos carrer de laigua',
  price: 1500,
  capacity: 50,
  title: 'Costa Brava Miedeval Castle',
  description:'Bring all your friends and have an amazing experience in this Costa Brava castle! Whether you’re in town for business or pleasure, or both, Palamos has lots to see and do. Conveniently located a short walk from the cities facilities, this mansion is the perfect home base for exploring this beautiful city. With two bedrooms and a guest area, there are total accommodations for five, making it perfect for a small family, or group of friends or colleagues. Copyright © Mansions B&B. All rights reserved.',
  user: bruna
)
file_palamos = URI.open('https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80')
palamos.photos.attach(io: file_palamos, filename: 'palamos.png', content_type: 'image/png')
file_palamos = URI.open('https://images.unsplash.com/photo-1588854337236-6889d631faa8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
palamos.photos.attach(io: file_palamos, filename: 'palamos.png', content_type: 'image/png')
file_palamos = URI.open('https://images.unsplash.com/photo-1582417728413-b2347161b864?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1651&q=80')
palamos.photos.attach(io: file_palamos, filename: 'palamos.png', content_type: 'image/png')


