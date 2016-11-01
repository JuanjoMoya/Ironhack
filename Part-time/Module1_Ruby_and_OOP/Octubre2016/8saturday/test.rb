# print "Hello"
# print "world"

# favourite_food = "Pizza"
# puts "My favourite food is"
# puts favourite_food

# puts 0.zero?

#puts "thugs".include?("hugs")

# str = "whatever"
# puts str.size

# str2 = "hello\nwor\nld"
# puts str2

# num1 = 5
# num2 = 3
# result = num1 * num2
# puts "The result of #{num1} x #{num2} is " + result.to_s

# puts "What´s your name"
# name = gets.chomp
# puts "Hola #{name}"


# puts "Write a number"
# num1 = gets.chomp.to_i
# puts "Write another number"
# num2 = gets.chomp.to_i
# result = num1 * num2
# puts "The result of #{num1} x #{num2} is #{result}"

#@array
# favourite_foods = ["pizza", "spaghetti", "mozzarella"]
# favourite_foods << "chorizo"
# puts favourite_foods

##hash
# favourite_foods = {
#   :carbs => "pizza",
#   :cheese => "mozzarella"
# }
# puts favourite_foods[:carbs]
#
# number = 2300
# puts number != 2300

# class push
# end
#
# if push  # (if 42...)
#   push.send
# end

# my_file = IO.read("menu.txt")
# single_elements = my_file.split(",")
# puts single_elements[1]

# IO.write("menu.txt","pizza,pasta,tiramisu,calzone")
#
# my_file = IO.read("menu.txt")
# single_elements = my_file.split(",")
# puts single_elements[2]

# fruits = ["orange","banana","pineapple"]
#
# fruits.each do |single_fruit|
#   puts single_fruit
# end
#
#
# fruits = ["orange","banana","pineapple"]
# score = 0
# fruits.each do |single_fruit|
#   puts "Guess the fruit"
#   input_user = gets.chomp
#   if single_fruit == input_user
#     puts "Yes!!"
#     score = score + 1
#   else
#     puts "Wrong guess"
#   end
# end
# puts "Total Score: " + score.to_s

# classmates = ["Jack", "Wally", "Joey"]
# classmates.each do |name|
#   #puts "Good morning " + name
#   puts "Good morning #{name}"
# end

# original_array = [1,2,3]
# new_array = []
# original_array.each do |single_number|
#   new_array.push(single_number+1)
# end
# puts new_array

# original_array = [1,2,3]
# new_array = original_array.map do |single_number|
#   single_number+1
# end
# puts new_array


# cities = ["miami", "madrid", "barcelona"]
# # new_cities = cities.map do |city|
# #   city.capitalize
# # end
# new_cities = cities.map {|city| city.capitalize}
# puts new_cities


# numbers = [1,2,3,4,76,11,246]
# total = numbers.reduce {|current_sum, single_number| current_sum + single_number}
# puts total

# cities = ["miami", "madrid", "barcelona"]
# total_length = cities.reduce(0) do|sum, city|
#   sum + city.length
# end
# puts total_length / cities.length

# fruits = ["orange","banana","kiwi"]
# counter = 0
# fruits.each do |one_fruit|
#   puts "#{counter}) #{one_fruit}}"
#   counter += 1
# end

# fruits = ["orange","banana","kiwi"]
# fruits.each_with_index do |one_fruit,indice|
#   puts "#{indice}) #{one_fruit}}"
# end

# arr = [5,2,3]
# new_arr = arr.select {|x| x.odd?}
# puts new_arr
