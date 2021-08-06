# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.
# requie ''
# 


# require 'pry'
# 10.times do
#     User.create(email: Faker::Internet.unique.email, password: Faker::Lorem.word)
#     # puts "Hello world"
# end

# Pry.start
Store.destroy_all
Flower.destroy_all
Profile.destroy_all
User.destroy_all
Order.destroy_all

# Store.reset_pk_sequence 
# Flower.reset_pk_sequence 
# Profile.reset_pk_sequence 
# User.reset_pk_sequence 
# Order.reset_pk_sequence 

user1 = User.create(email: Faker::Internet.email, password: "password")
user2 = User.create(email: Faker::Internet.email, password: "password")



store1 = Store.create(zipcode: Faker::Number.number(digits: 5), address: Faker::Address.street_address, image_url: Faker::LoremFlickr.image(size: "500x600", search_terms: ['flower', 'plants'], match_all: true), user_id: User.first.id)
store2 = Store.create(zipcode: Faker::Number.number(digits: 5), address: Faker::Address.street_address, image_url: Faker::LoremFlickr.image(size: "500x600", search_terms: ['flower', 'plants'], match_all: true), user_id: User.last.id)

flower1 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3), image_url: "https://images.unsplash.com/photo-1468327768560-75b778cbb551?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80", occasion: "Wedding")
flower2 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3), image_url: "https://images.unsplash.com/photo-1469259943454-aa100abba749?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80", occasion: "Romantic")
flower3 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3), image_url: "https://images.unsplash.com/photo-1457089328109-e5d9bd499191?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=913&q=80", occasion: "Wedding")
flower4 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3), image_url: "https://images.unsplash.com/photo-1476994230281-1448088947db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=934&q=80", occasion: "Birthday")
flower5 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3), image_url: "https://images.unsplash.com/photo-1561238160-3fd50893667f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=934&q=80", occasion: "Summer")

order1 = Order.create(:store_id => store1.id, :flower_id => flower1.id)
order2 = Order.create(:store_id => store2.id, :flower_id => flower2.id)
order3 = Order.create(:store_id => store1.id, :flower_id => flower3.id)
order4 = Order.create(:store_id => store1.id, :flower_id => flower4.id)
order5 = Order.create(:store_id => store2.id, :flower_id => flower5.id)
order6 = Order.create(:store_id => store2.id, :flower_id => flower5.id)

# order1 = Order.create(:store_id => store1.id, :flower_id => flower1.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3), quantity: 2)
# order2 = Order.create(:store_id => store2.id, :flower_id => flower2.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3), quantity: 2)
# order3 = Order.create(:store_id => store1.id, :flower_id => flower3.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3), quantity: 2)
# order4 = Order.create(:store_id => store1.id, :flower_id => flower4.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3), quantity: 2)
# order5 = Order.create(:store_id => store2.id, :flower_id => flower5.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3), quantity: 2)
# order6 = Order.create(:store_id => store2.id, :flower_id => flower5.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3), quantity: 2)
# store1 = Store.create(zipcode: Faker::Number.number(digits: 5))
# store2 = Store.create(zipcode: Faker::Number.number(digits: 5))
# store3 = Store.create(zipcode: Faker::Number.number(digits: 5))
# store4 = Store.create(zipcode: Faker::Number.number(digits: 5))
# store5 = Store.create(zipcode: Faker::Number.number(digits: 5))
# store6 = Store.create(zipcode: Faker::Number.number(digits: 5))
# store7 = Store.create(zipcode: Faker::Number.number(digits: 5))

# flower1 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3))
# flower2 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3))
# flower3 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3))
# flower4 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3))
# flower5 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3))
# flower6 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3))
# flower7 = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3))

# user1 = User.create(email: Faker::Internet.email, password_digest: Faker::Verb.base )
# user2 = User.create(email: Faker::Internet.email, password_digest: Faker::Verb.base )
# user3 = User.create(email: Faker::Internet.email, password_digest: Faker::Verb.base )
# user4 = User.create(email: Faker::Internet.email, password_digest: Faker::Verb.base )
# user5 = User.create(email: Faker::Internet.email, password_digest: Faker::Verb.base )
# user6 = User.create(email: Faker::Internet.email, password_digest: Faker::Verb.base )
# user7 = User.create(email: Faker::Internet.email, password_digest: Faker::Verb.base )

# profile1 = Profile.create(address: Faker::Address.street_address, image_url: Faker::Internet.url, store_id: store1.id, user_id: user1.id)
# profile2 = Profile.create(address: Faker::Address.street_address, image_url: Faker::Internet.url, store_id: store1.id, user_id: user2.id)
# profile3 = Profile.create(address: Faker::Address.street_address, image_url: Faker::Internet.url, store_id: store2.id, user_id: user3.id)
# profile4 = Profile.create(address: Faker::Address.street_address, image_url: Faker::Internet.url, store_id: store3.id, user_id: user4.id)
# profile5 = Profile.create(address: Faker::Address.street_address, image_url: Faker::Internet.url, store_id: store4.id, user_id: user5.id)
# profile6 = Profile.create(address: Faker::Address.street_address, image_url: Faker::Internet.url, store_id: store5.id, user_id: user6.id)
# profile7 = Profile.create(address: Faker::Address.street_address, image_url: Faker::Internet.url, store_id: store2.id, user_id: user7.id)

# order1 = Order.create(:store_id => store1.id, :flower_id => flower1.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))
# order2 = Order.create(:store_id => store2.id, :flower_id => flower2.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))
# order3 = Order.create(:store_id => store3.id, :flower_id => flower3.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))
# order4 = Order.create(:store_id => store4.id, :flower_id => flower4.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))
# order5 = Order.create(:store_id => store5.id, :flower_id => flower5.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))
# order6 = Order.create(:store_id => store6.id, :flower_id => flower6.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))
# order7 = Order.create(:store_id => store7.id, :flower_id => flower7.id, :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))

# order8 = Order.create(:store_id => store.id, :flower_id => list_of_flower_id[counter], :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))
# order9 = Order.create(:store_id => store.id, :flower_id => list_of_flower_id[counter], :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))
# order10 = Order.create(:store_id => store.id, :flower_id => list_of_flower_id[counter], :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))

# list_of_store_id = []
# list_of_flower_id = []
# 10.times {
#     store = Store.create(zipcode: Faker::Number.number(digits: 5))
#     flower = Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3))
#     user = User.create(email: Faker::Internet.email, password_digest: Faker::Verb.base )
#     profile = Profile.create(address: Faker::Address.street_address, image_url: Faker::Internet.url, store_id: store.id, user_id: user.id)
#     list_of_store_id.push(store.id)
#     list_of_flower_id.push(flower.id)
# }

# counter = list_of_store_id.length
# while counter >= 0
#     Order.create(:store_id => list_of_store_id[counter], :flower_id => list_of_flower_id[counter], :order_total => Faker::Number.decimal(l_digits: 3, r_digits: 3))
#     counter = counter - 1
# end

# 10.times do
#     Store.create(zipcode: Faker::Number.number(digits: 5))
# end

# 10.times { Profile.create(address: Faker::Address.street_address, image_url: Faker::Internet.url, store_id: Faker::Number.between(from: 1, to: 10), user_id: Faker::Number.between(from: 1, to: 10))}

# 10.times do
#     Flower.create(name: Faker::Food.vegetables , price: Faker::Number.decimal(l_digits: 3, r_digits: 3))
# end


# ActiveRecord::Base.connection.tables.each do |table|
#     result = ActiveRecord::Base.connection.execute("SELECT id FROM #{table} ORDER BY id DESC LIMIT 1") rescue ( puts "Warning: not procesing table #{table}. Id is missing?" ; next )
#     ai_val = result.any? ? result.first['id'].to_i + 1 : 1
#     puts "Resetting auto increment ID for #{table} to #{ai_val}"
#     ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH #{ai_val}")
#   end

puts "Done seeding"