# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
    Item.create(
      title: Faker::Commerce.product_name, 
      inventory: Faker::Number.number(4), 
      price: Faker::Number.number(6)
    )
    Category.create(title: Faker::Commerce.department)
  end
  
  counter = 1
  Item.all.each do |item|
    item.category_id = counter
    item.save
    counter += 1
  end
  
  User.create(email: "faker@fake.com", password: "password")