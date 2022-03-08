require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum('annual_revenue')
puts "the total revenue of all stores is #{total_revenue}"

average_revenue = Store.average('annual_revenue')
puts "the average revenue of all stores is #{average_revenue}"

number_of_stores = Store.where("annual_revenue >= ?", 1000000).count
puts "the number of stores, where annual revenue is more than 1000000, is #{number_of_stores}."