require 'pry'


class Game
  def initialize
    @player_position = [0, 0]
    @rooms = []
    @lifes = 3
  end

  def add_room(room)
    @rooms.push(room)
  end


  def control_direction
# binding.pry
    actual_room = @rooms.find do |rm|
  		rm.room_position == @player_position
	  end

	  puts actual_room.description
    entry = gets.chomp

    case entry
      when "n"
      	next_position = [@player_position[0] + 1, @player_position[1]]
      when "e"
        next_position = [@player_position[0], @player_position[1] + 1]
      when "s"
        next_position = [@player_position[0] - 1, @player_position[1]]
      when "w"
        next_position = [@player_position[0], @player_position[1] - 1]
      when "look for food"
        puts "You have won. Congratulations!"
        exit
    else
      next_position = nil
    end

    next_room = @rooms.find do |rm|
    	rm.room_position == next_position
    end

    if next_room == nil
      puts "There is no exit there."
      @lifes -= 1
    else
      @player_position = next_room.room_position
    end
  end


  def play
    while @lifes > 0
      control_direction
    end
    puts "You have lost. Bye, bye!"
    exit
  end

end



class Room
  attr_accessor :name, :room_position, :description
  def initialize(name, room_position, description)
    @name = name
    @room_position = room_position
    @description = description
  end
end

room1 = Room.new("Room1", [0, 0], "you are in room 1")
room2 = Room.new("Room2", [1, 0], "you are in room 2")
room3 = Room.new("Room3", [2, 0], "you are in room 3")
room4 = Room.new("Room4", [0, 1], "you are in room 4")
room5 = Room.new("Room5", [1, 1], "you are in room 5")
room6 = Room.new("Room6", [2, 1], "you are in room 6")
room7 = Room.new("Room7", [0, 2], "you are in room 7")
room8 = Room.new("Room8", [1, 2], "you are in room 8")
room9 = Room.new("Room9", [2, 2], "you are in room 9")


game1 = Game.new

game1.add_room(room1)
game1.add_room(room2)
game1.add_room(room3)
game1.add_room(room4)
game1.add_room(room5)
game1.add_room(room6)
game1.add_room(room7)
game1.add_room(room8)
game1.add_room(room9)

game1.play
