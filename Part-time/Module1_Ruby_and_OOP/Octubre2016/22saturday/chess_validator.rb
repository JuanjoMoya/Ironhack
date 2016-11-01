require 'pry'

# class Validate_pieces
#   string_moves = IO.read("simple_moves.txt")
#   array_moves = string_moves.split("\n")
#   array_moves.each do |mov|
#
#   end
# end




class Board
	def initialize
		board_array = [0, 0]
		@grid = {
		"wR" => [0, 0],
		"bR" => [0, 7],
		"wQ" => [0, 3],
		"wB" => [0, 2],
		"wK" => [4, 4]
		}
		#@position = position
	end

	def check_status_position(position)
		if @grid.has_value?(position) == true
			return @grid.key(position)
		else
			return false
		end
	end
end




class Piece
	def initialize
		@origin_piece = ""
		@destination_piece = ""
		@origin_color = ""
		@destination_color = ""
	end

	def check_basics_conditions(board, origin, destination)
		if origin == destination
			return "ILEGAL"
		else
			if board.check_status_position(origin) == false
				return "ILEGAL"
			else
				if board.check_status_position(destination) == false
					return "LEGAL"
				else
					check_colors(board, origin, destination)
				end
			end
		end
	end

	# Check that origin color is different that destination color
	def check_colors(board, origin, destination)
		@origin_piece = board.check_status_position(origin)
		@origin_color = origin_piece[0, 1]
		@destination_piece = board.check_status_position(destination)
		@destination_color = destination_piece[0, 1]

		if @origin_color == @destination_color
			return "ILEGAL"
		else
			return "LEGAL"
		end
	end

	def check_valid_move(board, origin, destination)
		check_basics_conditions(board, origin, destination)
	end

end




class Rook < Piece

	def check_mov_cross(board, origin, destination)
		#Check whether the move is horizontal or vertical
		if origin[0] != destination[0]  && origin[1] != destination[1]
			return "ILEGAL"
		else
			if origin[0] == destination[0]
				if origin[1] < destination[1]
					#Check if the cells until the destination are empty
					num = origin[1] + 1
					while num  < destination[1]
						if board.check_status_position([origin[0], num]) != false
							return "ILEGAL"
						end
						num += 1
					end
					if board.check_status_position([origin[0], num]) == false
						return "LEGAL"
					end
				else
					#Check if the cells until the destination are empty
					num = origin[1] - 1
					while num  > destination[1]
						if board.check_status_position([origin[0], num]) != false
							return "ILEGAL"
						end
						num -= 1
					end
					if board.check_status_position([origin[0], num]) == false
						return "LEGAL"
					end
				end
			else
				if origin[0] < destination[0]
					#Check if the cells until the destination are empty
					num = origin[0] + 1
					while num  < destination[0]
						if board.check_status_position([origin[1], num]) != false
							return "ILEGAL"
						end
						num += 1
					end
					if board.check_status_position([origin[1], num]) == false
						return "LEGAL"
					end
				else
					#Check if the cells until the destination are empty
					num = origin[0] - 1
					while num  > destination[0]
						if board.check_status_position([origin[1], num]) != false
							return "ILEGAL"
						end
						num -= 1
					end
					if board.check_status_position([origin[1], num]) == false
						return "LEGAL"
					end
				end
			end
		end
	end



	def check_valid_move(board, origin, destination)
		if check_basics_conditions(board, origin, destination) == "LEGAL"
			check_mov_cross(board, origin, destination)
		else
			return "ILEGAL"
		end
	end



end



# board1 = Board.new
# rook1 = Rook.new
# puts rook1.check_valid_move(board1,[0, 0], [0, 1])




class Queen < Rook

	def check_mov_diagonal(board, origin, destination)
		#Check whether the movement is diagonal
		num_next = origin
		if origin[0] > destination[0]
			if origin[1] > destination[1]
				#Check if the cells until the destination are empty
				num_next = [num_next[0] - 1, num_next[1] - 1]
				while num_next[0]  > destination[0]
					if board.check_status_position(num_next) != false
						return "ILEGAL"
					end
					num_next = [num_next[0] - 1, num_next[1] - 1]
				end
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"
				end
			elsif origin[1] < destination[1]
				#Check if the cells until the destination are empty
				num_next = [num_next[0] - 1, num_next[1] + 1]
				while num_next[0]  > destination[0]
					if board.check_status_position(num_next) != false
						return "ILEGAL"
					end
					num_next = [num_next[0] - 1, num_next[1] + 1]
				end
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"
				end
			else
				return "ILEGAL"
			end
		elsif origin[0] < destination[0]
			if origin[1] > destination[1]
				#Check if the cells until the destination are empty
				num_next = [num_next[0] + 1, num_next[1] - 1]
				while num_next[0]  < destination[0]
					if board.check_status_position(num_next) != false
						return "ILEGAL"
					end
					num_next = [num_next[0] + 1, num_next[1] - 1]
				end
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"
				end
			else
				return "ILEGAL"
			end
		else
			#Check if the cells until the destination are empty
			num_next = [num_next[0] + 1, num_next[1] + 1]
			while num_next[0]  < destination[0]
				if board.check_status_position(num_next) != false
					return "ILEGAL"
				end 
				num_next = [num_next[0] + 1, num_next[1] + 1]
			end 
			if num_next != destination
				return "ILEGAL"
			else
				return "LEGAL"
			end
		end
	end



	def check_valid_move(board, origin, destination)
		if check_basics_conditions(board, origin, destination) == "LEGAL"
			if check_mov_cross(board, origin, destination) == "LEGAL"
				return "LEGAL"
			else
				if check_mov_diagonal(board, origin, destination) == "LEGAL"
					return "LEGAL"
				else
					return "ILEGAL"
				end
			end
		else
			return "ILEGAL"
		end
	end



end




# board1 = Board.new
# queen1 = Queen.new
# puts queen1.check_valid_move(board1,[0, 3], [2, 1])




class Bishop < Piece

	def check_mov_diagonal(board, origin, destination)
		#Check whether the movement is diagonal
		num_next = origin
		if origin[0] > destination[0]
			if origin[1] > destination[1]
				#Check if the cells until the destination are empty
				num_next = [num_next[0] - 1, num_next[1] - 1]
				while num_next[0]  > destination[0]
					if board.check_status_position(num_next) != false
						return "ILEGAL"
					end
					num_next = [num_next[0] - 1, num_next[1] - 1]
				end
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"
				end
			elsif origin[1] < destination[1]
				#Check if the cells until the destination are empty
				num_next = [num_next[0] - 1, num_next[1] + 1]
				while num_next[0]  > destination[0]
					if board.check_status_position(num_next) != false
						return "ILEGAL"
					end
					num_next = [num_next[0] - 1, num_next[1] + 1]
				end
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"
				end
			else
				return "ILEGAL"
			end
		elsif origin[0] < destination[0]
			if origin[1] > destination[1]
				#Check if the cells until the destination are empty
				num_next = [num_next[0] + 1, num_next[1] - 1]
				while num_next[0]  < destination[0]
					if board.check_status_position(num_next) != false
						return "ILEGAL"
					end
					#num_next = [origin[0] + 1, origin[1] - 1]
					num_next = [num_next[0] + 1, num_next[1] - 1]
				end
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"
				end
			else
				return "ILEGAL"
			end
		else
			#Check if the cells until the destination are empty
			num_next = [num_next[0] + 1, num_next[1] + 1]
			while num_next[0]  < destination[0]
				if board.check_status_position(num_next) != false
					return "ILEGAL"
				end 
				num_next = [num_next[0] + 1, num_next[1] + 1]
			end 
			if num_next != destination
				return "ILEGAL"
			else
				return "LEGAL"
			end
		end
	end



	def check_valid_move(board, origin, destination)
		if check_basics_conditions(board, origin, destination) == "LEGAL"
			check_mov_diagonal(board, origin, destination)
		else
			return "ILEGAL"
		end
	end



end




# board1 = Board.new
# bishop1 = Bishop.new
# puts bishop1.check_valid_move(board1,[0, 2], [2, 0])





class King < Piece

	def check_mov_cross(board, origin, destination)
		#Check whether the move is horizontal or vertical
		if origin[0] != destination[0]  && origin[1] != destination[1]
			return "ILEGAL"
		else
			if origin[0] == destination[0]
				if origin[1] < destination[1]
					num = origin[1] + 1
					if num != destination[1]
						return "ILEGAL"
					else
						return "LEGAL"
					end
				else
					num = origin[1] - 1
					if num != destination[1]
						return "ILEGAL"
					else
						return "LEGAL"
					end
				end
			else
				if origin[0] < destination[0]
					num = origin[0] + 1
					if num != destination[0]
						return "ILEGAL"
					else
						return "LEGAL"
					end
				else
					num = origin[0] - 1
					if num != destination[0]
						return "ILEGAL"
					else
						return "LEGAL"
					end
				end
			end
		end
	end


	def check_mov_diagonal(board, origin, destination)
		#Check whether the movement is diagonal
		num_next = origin
		if origin[0] > destination[0]
			if origin[1] > destination[1]
				num_next = [num_next[0] - 1, num_next[1] - 1]
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"
				end
			elsif origin[1] < destination[1]
				num_next = [num_next[0] - 1, num_next[1] + 1]
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"				
				end
			else
				return "ILEGAL"
			end
		elsif origin[0] < destination[0]
			if origin[1] > destination[1]	
				num_next = [num_next[0] + 1, num_next[1] - 1]
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"
				end
			elsif origin[1] < destination[1]
				num_next = [num_next[0] + 1, num_next[1] + 1]
				if num_next != destination
					return "ILEGAL"
				else
					return "LEGAL"
				end
			else
				return "ILEGAL"
			end
		else
			return "ILEGAL"
		end
	end



	def check_valid_move(board, origin, destination)
		if check_basics_conditions(board, origin, destination) == "LEGAL"
			if check_mov_cross(board, origin, destination) == "LEGAL"
				return "LEGAL"
			else
				if check_mov_diagonal(board, origin, destination) == "LEGAL"
					return "LEGAL"
				else
					return "ILEGAL"
				end
			end
		else
			return "ILEGAL"
		end
	end



end




board1 = Board.new
king1 = King.new
puts king1.check_valid_move(board1,[4, 4], [3, 3])



