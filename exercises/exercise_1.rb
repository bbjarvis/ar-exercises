require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
def create_store (name, annual_revenue, mens_apparel, womens_apparel)
  name = Store.create(
  name: name.capitalize(),
  annual_revenue: annual_revenue,
  mens_apparel: mens_apparel,
  womens_apparel: womens_apparel)
end

def store_count
  puts "#{Store.all.count} stores in database"
end

create_store("burnaby", 300000, true, true)
create_store("richmond", 1260000, true, false)
create_store("gastown", 190000, false, true)

store_count