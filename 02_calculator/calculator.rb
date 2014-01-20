def add(a,b)
	return a + b
end

def subtract(a,b)
	return a - b
end

def sum(array)
	array.inject(0) {|result, element| result + element}
end

def multiply(*numbers)
	result = 1
	numbers.each do |x|
		result = result*x
		result
	end
	return result
end

def factorial(number)
	total = number
	while number > 0
		next_number = number - 1
		total = number*next_number
		number = next_number
	end
end

