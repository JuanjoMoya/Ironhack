def words(sentence)
	# First we split the sentence into words
	words_array1 = sentence.split(' ')

	# Second We remove punctuation characters
	words_array2 = Array.new
	words_array1.each do |word1|
		word2 = word1.gsub(/[[:punct:]]/, '')

	# Corrección de error: 
		#words_array2.push "#{word2}" -> no hay necesidad de usar #{}, es suficiente pasar la variable word2
		words_array2.push word2
	end

	# Third (first option without custom function) we sort the words of the array
	#words_array2.sort! do |a,b|
	#	a.upcase <=> b.upcase
	#end

	# Third (second option with custom function) we create a custom function to sort the words
	
	# Corrección de error: 
	#words_array3 = Array.new -> words_array3 es un parametro y no se necesita crearlo en la linea de arriba
	def sort_array(words_array3)
		words_array3.sort! do |a,b|
			a.upcase <=> b.upcase
		end
		return words_array3
	end	

	# Corrección de error:
	#sort_array(words_array2) -> esta función devuelve como valor words_array2 cambiado pero no lo cambia, o sea no guarda el cambio, para que el cambio pueda guardarse -> words_array2 = sort_array(words_array2) 
	words_array2 = sort_array(words_array2)

	return words_array2

	# Corrección de error:
	#Otro comentario es de cambiar el nombre de las variables por nombre que sea mas claros de interpretar bajo el punta de vista de la semántica, sus nombres tienen que reflejar el contenido de las variables

end