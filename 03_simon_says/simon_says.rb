def echo(call)
	return call
end

def shout(call)
	return call.upcase
end

def repeat(call, times=2)
	Array.new(times, call).join(" ")
end

def start_of_word(word, letters)
	word.slice(0, letters)
end

def first_word(sentence)
	new_arr = sentence.split
	new_arr.first
end

def titleize(sentence)
	new_arr = sentence.split
	capital_array = Array.new
	new_arr.each do |word|
		if (word ==  "the" || word == "over" || word == "and")
			capital_array.push(word)
		else
			capital_array.push(word.capitalize)
		end
	end
	capital_array[0] = capital_array[0].capitalize
	sentence = capital_array.join(" ")
end

# def titleize(sen)
# 	arr = sen.split.map do |word|
# 		unless %w(the over and).include?(word)
# 			word = word.capitalize
# 		end
# 		word
# 	end
# 	arr[0] = arr[0].capitalize if arr.length > 0
# 	arr.join(' ')

# end




		#the over and