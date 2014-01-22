class Book
	# attr_accessor :book


	def title=(book)
		@book = book
	end

	def title
		sen_array = @book.split
		new_array = []
		sen_array.each do |word|
			if (word == "the" || word == "a" || word == "an" || word == "and" || word == "of" || word == "in")
				new_array.push(word)
			else
				new_array.push(word.capitalize)
			end
		end
		new_array[0] = new_array[0].capitalize
		sentence = new_array.join(" ")
	end
end