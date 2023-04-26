# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Creating restaurants...'
Restaurant.create!(name: 'Casa Vigil', address: 'Palmares', phone_number: '12354', category: 'chinese')
Restaurant.create!(name: 'Torito', address: 'Il-Mercato', phone_number: '12354', category: 'belgian')
Restaurant.create!(name: 'The Nook', address: 'Juan B Justo', phone_number: '12354', category: 'japanese')
Restaurant.create!(name: 'Shelby', address: 'El bombal', phone_number: '12354', category: 'italian')

puts 'Done!'
