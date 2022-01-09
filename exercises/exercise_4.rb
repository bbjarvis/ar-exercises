require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
create_store("surrey", 224000, false, true)
create_store("whistler", 1900000, true, false)
create_store("yaletown", 430000, true, true)

@mens_stores = Store.where(mens_apparel: true)

@womens_stores_under_1m = Store.where("annual_revenue < 1000000", womens_apparel: true)

def store_rev (store)
  store.each { |u| puts "#{u.name} has $#{u.annual_revenue} in revenue" }
end

puts "Men's Stores =>"
store_rev(@mens_stores)
puts "Women's Stores under 1M in revenue =>"
store_rev(@womens_stores_under_1m)