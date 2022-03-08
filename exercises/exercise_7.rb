require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "please enter a store name: "
input_name = $stdin.gets.chomp 

puts input_name

new_store = Store.create(name: "#{input_name}")

new_store.errors.messages.each { |message| 
  # print message
  puts message
}
# p new_store.errors
# puts new_store.errors.messages