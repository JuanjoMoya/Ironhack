require 'imdb'
require 'pry'

pelis = IO.read("movies.txt")

array_movies = pelis.split("\n")
array_mov2 = []
array_movies.each do |mov|
  #binding.pry
  i = Imdb::Search.new(mov).movies.first.id
  this_mov = Imdb::Movie.new(i)
  array_mov2.push(this_mov.rating)
end


mov_rating = 8
count = 0
11.times do
  count += 1

  if count < 9
    array_mov2.each do |rat|
      print "|"
      if rat >= mov_rating
        print "#"
      else
        print " "
      end
    end
    print "|\n"
    mov_rating -= 1

  elsif count == 9
    array_movies.length.times do
      print "--"
    end
    print "-\n"

  elsif count == 10
    array_movies.each_with_index do |mov, index|
      print "|#{index + 1}"
    end
    print "|\n"

  else
    puts ""
  end
end


num_mov = 0
array_movies.each do |mov|
  num_mov += 1
  puts "#{num_mov}. #{mov}"
end
