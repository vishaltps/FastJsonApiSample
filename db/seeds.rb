# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  Author.create(
    name: Faker::Name.unique.name,
    email: Faker::Internet.email,
    dob: Faker::Date.birthday(18, 65),
    city: Faker::Address.city
  )
end

500.times do
  Article.create(
    title: Faker::Book.title,
    description: Faker::Lorem.characters,
    author_id: Author.order('RANDOM()').first.id
  )
end

1000.times do
  Comment.create(
    description: Faker::Lorem.characters,
    article_id: Article.order('RANDOM()').first.id
  )
end
