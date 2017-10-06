require 'faker'

# Create users
5.times do
  User.create!(
    username: Faker::Internet.user_name,
    password: Faker::Internet.password(6)
  )
end
users = User.all

# Create lists
15.times do
  List.create!(
    title: Faker::Hipster.unique.word,
    user: users.sample,
    private: [true, false].sample
  )
end
lists = List.all

# Create items
50.times do
  item = Item.create!(
    body: Faker::Hipster.sentence,
    list: lists.sample
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users"
puts "#{List.count} lists"
puts "#{Item.count} posts"
