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
  description:'Bring your friends and all your family this mansion fits 300 people and you can do anything you want in it!',
  user: ana
)

balmes.photo.attach(io: file_balmes, filename: 'balmes.png', content_type: 'image/png')


file_muntaner = URI.open('https://images.unsplash.com/photo-1566908829550-e6551b00979b?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1349&q=80')
muntaner = Mansion.create(
  address: 'Carrer Muntaner 192',
  price: 10000,
  capacity: 100,
  title: 'Whole building on Muntaner',
  description:'You are renting a whole building so you can literally do whatever you want!',
  user: rocio
)

muntaner.photo.attach(io: file_muntaner, filename: 'muntaner.png', content_type: 'image/png')

file_plaza = URI.open('https://images.unsplash.com/photo-1573599852326-2d4da0bbe613?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1281&q=80')

plaza = Mansion.create(
  address: 'Plaza Catalunya 1',
  price: 2000,
  capacity: 500,
  title: 'Penthouse luxury Plaza Catalunya',
  description:'A fantastic location, right next to the ramblas with an amazing view of the city',
  user: jaume
  )
plaza.photo.attach(io: file_plaza, filename: 'plaza.png', content_type: 'image/png')

file_pearson = URI.open('https://images.unsplash.com/photo-1572718329684-bd59a824d1b9?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1341&q=80')

pearson = Mansion.create(
  address: 'Avenida Pearson',
  price: 1200,
  capacity: 200,
  title: '200 person Mansion in Pedralbes',
  description:' Get an amazing view of the city with this incredible mansion all the way up in Pedralbes hidden away. ',
  user: dani
)

pearson.photo.attach(io: file_pearson, filename: 'pearson.png', content_type: 'image/png')


file_palamos = URI.open('https://images.unsplash.com/photo-1603460217649-decbe0624f54?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1348&q=80')

palamos = Mansion.create(
  address: 'Palamos carrer de laigua',
  price: 1500,
  capacity: 50,
  title: 'Costa Brava Miedeval Castle',
  description:' Bring all your friends and have an amazing experience in this Costa Brava castle!',
  user: bruna
)

palamos.photo.attach(io: file_palamos, filename: 'palamos.png', content_type: 'image/png')




