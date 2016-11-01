require 'pry'

fruits = ["orange","banana","kiwi"]
counter = 1
fruits.each do |one_fruit|
  puts "#{counter}) #{one_fruit}"
  counter += 1
  binding.pry
end
