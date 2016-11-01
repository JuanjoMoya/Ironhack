# Iteration #0: Create an array of homes
class Home
  attr_reader(:name, :city, :price, :capacity)

  def initialize(name, city, price, capacity)
    @name = name
    @city = city
    @price = price
    @capacity = capacity
  end
end



homes = [
  Home.new("Antoñito's place", "Seville", 35, 5),
  Home.new("Pepe's place", "Seville", 45, 3),
  Home.new("Paco's place", "Malaga", 40, 2),
  Home.new("Aitor's place", "Bilbao", 55, 3),
  Home.new("Patxi´s place", "Bilbao", 35, 2),
  Home.new("Josep's place", "Barcelona", 37, 3),
  Home.new("Joan's place", "Barcelona", 42, 3),
  Home.new("Covadonga's place", "Gijon", 32, 4),
  Home.new("Pilar's place", "Zaragoza", 34, 5),
  Home.new("Chiquito´s place", "Malaga", 24, 2)
]



#Iteration #1: List of homes
# homes.each do |hm|
#  puts hm.name + " in " + hm.city
#  puts "Price: $" + hm.price.to_s + " a night \n\n"
# end



#Iteration #2: Sorting
# default sort by price lowest to highest
sorted = homes.sort do |home1, home2|
  home1.price <=> home2.price
end

puts "Do you want to sort the list by price with highest first? (respond Yes or No)"
price_highest_first = gets.chomp
price_highest_first.downcase!
# default sort by price highest to lowest
if price_highest_first == "yes"
  sorted = homes.sort do |home1, home2|
    home2.price <=> home1.price
  end
end

puts "Do you want to sort the list by capacity? (respond Yes or No)"
by_capacity = gets.chomp
by_capacity.downcase!
# default sort by capacity
if by_capacity == "yes"
  sorted = homes.sort do |home1, home2|
    home1.capacity <=> home2.capacity
  end
end

# sorted.each do |nm|
#   puts nm.name
# end



#Iteration #3: Filter by city
puts "Do you want to select homes from one city? (respond No or select one of the next cities: Seville, Malaga, Bilbao, Barcelona, Gijon, Zaragoza)"
select_city = gets.chomp

if select_city != "No"
  selected_homes = homes.select do |hm|
    # Keep hm only if its city is select_city
    hm.city == select_city
  end
  selected_homes.each do |nm|
    puts nm.name
  end
  #Iteration #4: Average
  total_price = selected_homes.reduce(0.0) do|sum, city|
    sum + city.price
  end
  puts total_price / selected_homes.length

else
  sorted.each do |nm|
    puts nm.name
  end
  #Iteration #4: Average
  total_price = sorted.reduce(0.0) do|sum, city|
    sum + city.price
  end
  puts total_price / sorted.length

end



#Iteration #5: Name your own price
puts "Do you want to enter a price? (respond No or type a price)"
sel_price = gets.chomp
if sel_price != "No"
  num_price = sel_price.to_i
  home_with_price = homes.find do |hm|
    # Is hm's price $num_price?
    hm.price == num_price
  end
  puts "The first home that costs $#{num_price} is:"
  puts home_with_price.name
end
