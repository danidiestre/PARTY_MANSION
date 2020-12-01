# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Mansion.destroy_all
User.destroy_all

ana = User.create(email: "ana@gmail.com", password: "password")

rocio = User.create(email: 'rocio@gmail.com', password: 'password')

dani = User.create(email: "dani@gmail.com", password: "password")

bruna = User.create(email: "bruna@gmail.com", password: "password")

jaume = User.create(email: "jaume@gmail.com", password: "password")




Mansion.create(
  address: 'Carrer Balmes 382',
  price: 800,
  capacity: 300,
  title: 'Luxurious mansion in Balmes',
  description:'Bring your friends and all your family this mansion fits 300 people and you can do anything you want in it!',
  user: ana
  )

Mansion.create(
  address: 'Carrer Muntaner 192',
  price: 10000,
  capacity: 100,
  title: 'Whole building on Muntaner',
  description:'You are renting a whole building so you can literally do whatever you want!',
  user: rocio
  )

Mansion.create(
  address: 'Plaza Catalunya 1',
  price: 2000,
  capacity: 500,
  title: 'Penthouse luxury Plaza Catalunya',
  description:'A fantastic location, right next to the ramblas with an amazing view of the city',
  user: jaume
  )

Mansion.create(
  address: 'Avenida Pearson',
  price: 1200,
  capacity: 200,
  title: '200 person Mansion in Pedralbes',
  description:' Get an amazing view of the city with this incredible mansion all the way up in Pedralbes hidden away. ',
  user: dani
  )

Mansion.create(
  address: 'Palamos carrer de laigua',
  price: 1500,
  capacity: 50,
  title: 'Costa Brava Miedeval Castle',
  description:' Bring all your friends and have an amazing experience in this Costa Brava castle!',
  user: bruna
  )




