require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

  def create_employee (store, first_name, last_name, hourly_rate)
    store.employees.create(
      first_name: first_name,
      last_name: last_name,
      hourly_rate: hourly_rate
    )
  end
create_employee(@store1, "Khurram", "Virani", 60)
create_employee(@store1, "Brett", "Jarvis", 150)
create_employee(@store1, "Jess", "Gunn", 90)
create_employee(@store1, "Emilia", "Leigh", 50)
create_employee(@store1, "Billy", "Jerry", 40)
create_employee(@store2, "Keith", "Richards", 140)
create_employee(@store2, "Mick", "Jagger", 65)