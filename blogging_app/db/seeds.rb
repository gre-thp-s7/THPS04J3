# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
#
User.destroy_all
Article.destroy_all
Category.destroy_all


10.times do
  user = User.create!(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, email: Faker::Internet.email)
end

5.times do
  category = Category.create!(name: Faker::Beer.unique.name)
end

10.times do
  article = Article.create!(title: Faker::RickAndMorty.character, content: Faker::RickAndMorty.quote, user_id: rand(1..10), category_id: rand(1..5))
end

15.times do
  commentaire = Comment.create!(name: Faker::TheITCrowd.unique.quote, users_id: rand(1..10), articles_id: rand(1..10))
end

15.times do
  like = Like.create!(users_id: rand(1..10), articles_id: rand(1..10))
end

p "Created  movies"
