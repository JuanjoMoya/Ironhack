class Room
	attr_reader :description, :winner
	attr_accessor :item
	def initialize (description,winner,item)
		@description = description
		@winner = winner
		@item = item
	end
end

def self.is_direction(input)
	array_directions = ["N","n","S","s","E","e","W","w"]
	array_directions.each do |letter|
		if letter == input
			return true
		end
		end
		return false
end

class Player
	attr_reader :name, :item, :room_in
	attr_accessor :winner, :inventory
	def initialize (name)
		@name = name
		@inventory = ["knive","light"]
		@room_in = [1,1]
		@winner = false
	end

	def action (action,map)

		case action
		when "pick"
			puts "You picked #{map[self.coordenade].item}"

			@inventory << map[self.coordenade].item
			map[self.coordenade].item = nil
		when "inventory"
			puts "You have in your inventory:"
			@inventory.each do |item|
				puts item
			end
		else
			puts "I don't understand"
		end

	end

	def coordenade

		return (self.room_in[0].to_s + "," + self.room_in[1].to_s)
	end


	def change_room (direction)
		# Aquí teniem les coordenades al reves, ara ja funciona perfecte
		# Les lletres havien d'estar entre comilles
		case direction
		when "n"
			if @room_in[0] == 0
				puts " There's no door North"
			else
				@room_in[0] -= 1
			end
		when "s"
			if @room_in[0] == 2
				puts " There's no door South"
			else
				@room_in[0] += 1
			end
		when "e"
			if @room_in[1] == 2
				puts " There's no door East"
			else
				@room_in[1] += 1
			end
		when "w"
			if @room_in[1] == 0
				puts " There's no door West"
			else
				@room_in[1] -= 1
			end
		else
			puts "I don't understand that direction"
		end
	end
end

room_1 = Room.new("You are in a Beach",false,"Boat Sails")
room_2 = Room.new("room 2",false, "Fresh poisoned Meat")
room_3 = Room.new("room 3",true, "Fisherman")
room_4 = Room.new("room 4",false,"Tiger")
room_5 = Room.new("room 5",false,"Water Bottle")
room_6 = Room.new("room 6",false, "Plants")
room_7 = Room.new("room 7",false, "Axe")
room_8 = Room.new("room 8",false, "Chest")
room_9 = Room.new("room 9",false, "Wooden Box")


# Aquest HASH el teniem mal escrit. Ara ja podem accedir a les Rooms amb la coordenada
map = {
	"0,0" => room_1,
	"0,1" => room_2,
	"0,2" => room_3,
	"1,0" => room_4,
	"1,1" => room_5,
	"1,2" => room_6,
	"2,0" => room_7,
	"2,1" => room_8,
	"2,2" => room_9
}
puts "Type you name: \n"



player = Player.new(gets.chomp)

puts "Helloo! #{player.name}!! Move between rooms!"

puts map[player.coordenade].description

puts map[player.coordenade].item

#Aquí comença un while que no s'acaba mai, perque mai hi ha winner
#pero cada cop fa el mateix, posa el NSEW, agafa una lletra
#canvia la room on esta el jugador, i busca la descripció de la nova
#room i la posa. Ho entens no?





puts "Type N,S,E,W"

while player.winner == false

	input = gets.chomp
	if is_direction(input) == true
		player.change_room(input)

		puts map[player.coordenade].description
	else
		player.action(input,map)
	 	puts map[player.coordenade].description
	end
end
