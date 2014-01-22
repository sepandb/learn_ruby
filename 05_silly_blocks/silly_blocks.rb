def reverser
	sentence = ""
	array = yield.split
	array.each do |word|
		sentence = sentence + word.reverse
		sentence = "#{sentence} "
	end
	sentence.strip
end

def adder(x=1)
	yield + x
end

def repeater(x=1)
	x.times do
		yield
	end
end