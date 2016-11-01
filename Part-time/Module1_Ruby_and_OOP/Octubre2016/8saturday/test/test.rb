# class Home
#   attr_reader(:name, :city, :capacity, :price)
#
#   def initialize(name, city, capacity, price)
#     @name = name
#     @city = city
#     @capacity = capacity
#     @price = price
#   end
# end
#
#
# homes = [
#   Home.new("Nizar's place", "San Juan", 2, 42),
#   Home.new("Fernando's place", "Seville", 5, 47),
#   Home.new("Josh's place", "Pittsburgh", 3, 41),
#   Home.new("Gonzalo's place", "Málaga", 2, 45),
#   Home.new("Ariel's place", "San Juan", 4, 49)
# ]


# homes.each do |hm|
#  puts hm.name + " in " + hm.city
#  puts "Price: $" + hm.price.to_s + " a night \n\n"
# end


# prices = homes.map do |hm|
#   hm.price
# end
# total = 0.00
# prices.each do |prc|
#   total = total + prc
# end
# puts total/prices.length

# total = 0.00
# prices = homes.map do |hm|
#   total = total + hm.price
#   hm.price
# end
# puts total/prices.length

# total = homes.reduce(0.00) do |sum, hm|
#   sum + hm.price
# end
# puts total/homes.length


# homes.each_with_index do |hm, index|
#   puts "Home Number #{index + 1}: #{hm.name}"
# end


# Homes in San Juan
# san_juan_homes = homes.select do |hm|
#   # Keep hm only if its city is "San Juan"
#   hm.city == "San Juan"
# end
# The san_juan_homes array ends up looking like this:
# san_juan_homes = [
#   Home.new("Nizar's place", "San Juan", 2, 42),
#   Home.new("Ariel's place", "San Juan", 4, 49),
# ]


# home_41_dollars = homes.find do |hm|
#   # Is hm's price $41?
#   hm.price == 41
# end
# puts "The first home that costs $41 is:"
# puts home_41_dollars.name


# sorted = homes.sort do |home1, home2|
#   # Compare the two homes by their name
#   home2.name <=> home1.name
# end
# sorted.each do |nm|
#   puts nm.name
# end


# rng = 1..42
# rng.each do |number|
#   puts "The next number in the range is: #{number}"
# end
#
# double = rng.map do |number|
#   number * 2
# end
# puts double


# hellos = {
#   :english => "Hello",
#   :spanish => "Hola",
#   :french => "Bonjour"
# }
# hellos.each do |language, word|
#   puts "The word for Hello in #{language} is: #{word}."
# end
