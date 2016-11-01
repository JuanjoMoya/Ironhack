# Third iteration
def solve_cipher(input, shift_num = -3)

	# controll if there isn´t any shift
	# corrección error: si el shift sera 0 a lo largo del codigo las letras simplemente no cambiaran, digamos que una condición que no aporta nada
	#if shift_num == 0

	#	output = input

	#else

		# convert all letters to lower case
		input.downcase!

		# move to an array every letter in the string
		new_array1 = input.split('')

		# create a new array to use inside the each method
		new_array2 = Array.new 

		# convert every letter to the new code
		new_array1.each do |letter1|
			
			if letter1 == " "
				
				letter2 = " "

			else

				# calculate shift
				shift_real = 0
				shift_real = shift_num % 26

				# retrieve number of letter
				number1 = letter1.ord

				# control sign of shift and add to the final number
				if shift_real > 0
					number1 = number1 + shift_real
				else shift_real < 0
					number1 = number1 - shift_real
				end

				# control range of values of the final number
				if number1 < 97
					number1 = number1 + 26
				elsif number1 > 122
					number1 = number1 - 26
				end
				
				# convert the number to the letter
				letter2 = number1.chr
				
			end


			# move the new codes to the new array
			new_array2.push "#{letter2}"
		end

		# move to the output string the new array with the new codes
		output = new_array2.join

	#end
		
	return output

end