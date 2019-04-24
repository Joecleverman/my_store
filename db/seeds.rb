# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do 
#     Item.create(
#       title: Faker::Commerce.product_name, 
#       inventory: Faker::Number.number(4), 
#       price: Faker::Number.number(6)
#     )
#     Category.create(title: Faker::Commerce.department)
#   end
  
#   counter = 1
#   Item.all.each do |item|
#     item.category_id = counter
#     item.save
#     counter += 1
#   end
  






create_items = [
  ["IPhone", 8, 750, "Lorem ipsum dolor amet adaptogen sunt sartorial elit, pabst labore prism man bun kitsch. Do nisi migas, anim meggings sustainable consectetur. Food truck meditation forage keytar.", "Eletronic Gadgets"], ['TV Flat Screen', 23, 200, "Retro helvetica cray craft beer laborum. Art party franzen duis, kitsch selfies irony mixtape edison bulb ut in readymade freegan.", "Electronics Gadgets"], ['Gatorade', 10, 39, "Water street art non messenger bag paleo reprehenderit.", "Beverages"], ['Cool Backpack', 12, 49, "Tote bag af aliquip lorem etsy, squid taxidermy . Excepteur ullamco ipsum cold-p raclette tumeric kogi hoodie succulents.", "Housing"]
]

create_items2 = [
  ['Interior Chair', 7, 68, "Street art succulents copper mug, vape 3 wolf moon deserunt enamel pin occaecat cronut keytar. ", "Housing"], ['Dresser', 4, 100, "knausgaard master cleanse 8-bit banh mi, poke 3 wolf moon leggings slow-carb sustainable keytar.", "Candies"], ['Boiler', 9, 300, "Aute quis raw denim, cupidatat keffiyeh franzen pug trust fund.", "Essentials"], ['Skitty Candy', 19, 23, "Distillery cillum crucifix irony chillwave reprehenderit keytar ugh gastropub.", "Candy"]
]

# country_list.each do |country|
#   Country.create( :name => country[0], :population => country[1] )
# end


create_items.each do |item|
  Item.create(title: item[0], inventory: item[1], price: item[2], category: Category.find_or_create_by(title: item[4]))
end

create_items2.each do |item|
  Item.create(title: item[0], inventory: item[1], price: item[2], category: Category.find_or_create_by(title: item[4]))
end


  User.create(email: "faker@fake.com", password: "password")