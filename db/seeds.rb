# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Movie.destroy_all
List.destroy_all

10.times do
  movie = Movie.create(title: Faker::Movie.title, overview: Faker::Movie.quote, poster_url: 'www.movie.com', rating: 5)
end

List.create(name: 'Drama')
