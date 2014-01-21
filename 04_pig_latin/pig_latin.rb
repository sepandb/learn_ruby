

def starts_with_vowel(string)
	string + "ay"
end

def starts_with_consonant(string)
	first_letter = string[0]
	beginning = string.delete(first_letter)
	beginning + first_letter + "ay"
end

def starts_with_two_consonants(string)
	first_letters = string[0] + string[1]
	beginning = string.delete(first_letters)
	beginning + first_letters + "ay"
end

def starts_with_three_consonants(string)
	first_letters = string[0] + string[1] + string[2]
	beginning = string.delete(first_letters)
	beginning + first_letters + "ay"
end

def translate(string)
	alphabet = ("a".."z").to_a
	vowel = ["a", "e", "i", "o", "u"]
	consonant = alphabet - vowel

	sen_array = string.split
	sentence = ""
	sen_array.each do |word|
		if (vowel.include?(word[0]))
			sentence = sentence + starts_with_vowel(word)
		elsif (consonant.include?(word[0]) && consonant.include?(word[1]) && consonant.include?(word[2]) || ("s" + word[1] + word[2] == "squ"))
			sentence = sentence + starts_with_three_consonants(word)
		elsif (consonant.include?(word[0]) && consonant.include?(word[1]) || (word[0] + word[1] == "qu"))
			sentence = sentence + starts_with_two_consonants(word)
		elsif (consonant.include?(word[0]))
			sentence = sentence + starts_with_consonant(word)
		end
		sentence = "#{sentence} "
	end
	sentence.strip
end