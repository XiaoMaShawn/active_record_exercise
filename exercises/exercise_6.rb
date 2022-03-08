require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store4 = Store.find_by(id: 4)
@store5 = Store.find_by(id: 5)
@store6 = Store.find_by(id: 6)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Leo", last_name: "Jaz", hourly_rate: 65)
@store2.employees.create(first_name: "Jason", last_name: "Wang", hourly_rate: 44)
@store2.employees.create(first_name: "Tim", last_name: "Le", hourly_rate: 54)
@store4.employees.create(first_name: "Tom", last_name: "Edson", hourly_rate: 56)
@store5.employees.create(first_name: "Jack", last_name: "Mark", hourly_rate: 70)
@store6.employees.create(first_name: "Susi", last_name: "Elina", hourly_rate: 90)

