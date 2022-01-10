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

# Employees must always have a first name present
create_employee(@store1, "", "last", 60)
# Employees must always have a last name present
create_employee(@store1, "first", "", 60)
# Employees have a hourly_rate that is a number (integer) between 40 and 200
create_employee(@store1, "first", "last", 10)
create_employee(@store1, "first", "last", 250)
# Employees must always have a store that they belong to
# (can't have an employee that is not assigned a store)
Employee.create(
  first_name: "first_name",
  last_name: "last_name",
  hourly_rate: 60)
# Stores must always have a name that is a minimum of 3 characters
create_store("bb", 300000, true, true)
# Stores have an annual_revenue that is a number (integer) that must
# be 0 or more
create_store("surrey", "word", true, true)
create_store("surrey", 0, true, true)

puts "Please input a store name"
@storeUser = gets
@inputStore = Store.create(name: @storeUser)
puts @store_name.errors.messages