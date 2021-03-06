# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Lorenzo', email_address: 'lorenzo@gmail.com')
User.create!(name: 'Juanjo', email_address: 'juanjo#hotmail.com')
User.create!(name: 'Anabel', email_address: 'annina@aol.com')
User.create!(name: 'Dolores', email_address: 'dolors@gmail.com')

Product.create!(user_id: 1, title: 'Sofa', description: 'Viejo pero en buen estado', deadline: Date.tomorrow, minimum_bid: 70)
Product.create!(user_id: 1, title: 'Tele', description: '¿quien la mira hoy en dia?', deadline: Date.tomorrow, minimum_bid: 200)
Product.create!(user_id: 2, title: 'Gameboy', description: 'la caña', deadline: Date.tomorrow, minimum_bid: 90)
