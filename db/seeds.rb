# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |i|
	prc = rand 100
  p = Product.create(name: Faker::Space.unique.meteorite, description: Faker::TvShows::Buffy.unique.quote, price: prc)

	3.times do |j|
		Review.create(author: Faker::Computer.os, body: Faker::Quote.robin, product: p)
	end
end
