require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
Surrey = Store.create(name: "Surrey", annual_revenue:224000, mens_apparel:false, womens_apparel:true )
Whistler = Store.create(name: "Whistler", annual_revenue:1900000, mens_apparel:true, womens_apparel:false )
Yaletown = Store.create(name: "Yaletown", annual_revenue:430000, mens_apparel:true, womens_apparel:true )

@mens_stores = Store.where(mens_apparel: true)

puts "Mens Stores here"
@mens_stores.each { |store| 
  print "#{store.name} annual revenue is "
  puts store.annual_revenue
} 

@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

puts "Womens Stores here"
@womens_stores.each { |store| 
  print "#{store.name} annual revenue is "
  puts store.annual_revenue
}

