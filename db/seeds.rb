# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Movie.destroy_all

100.times do
  movie = Movie.create!(name: Faker::Book.title, year: Faker::Number.between(1990, 2020), genre: ["action", "horreur", "comédie", "drame"].sample, synopsis: Faker::Lorem.paragraph, director: Faker::Name.name, allocine_rating: Faker::Number.decimal(1, 1), already_seen: false)
end


