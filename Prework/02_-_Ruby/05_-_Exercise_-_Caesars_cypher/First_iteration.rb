# First iteration
def solve_cipher(input)

	# convert all letters to lower case
	input.downcase!

	# move to an array every letter in the string
	new_array1 = input.split('')

	# create a new array to use inside the each method
	new_array2 = Array.new 

	# convert every letter to the new code
	new_array1.each do |letter1|
		if letter1 == "a"
			letter2 = "z"
		else
			number1 = letter1.ord
			number1 = number1 - 1
			letter2 = number1.chr
		end

		# move the new codes to the new array
		new_array2.push "#{letter2}"
	end

	# move to the output string the new array with the new codes
	output = new_array2.join
	
	return output

end