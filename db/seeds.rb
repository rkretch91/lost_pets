# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  Pet.create!(
    name: Faker::Creature::Cat.name,
    species: %w(dog cat snake bird tarantula).sample,
    address: Faker::Address.city,
    found_on: Faker::Date.between(from: '2020-09-01', to: '2021-01-09')
  )
end
