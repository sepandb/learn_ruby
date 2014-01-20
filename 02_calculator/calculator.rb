def add(a,b)
	return a + b
end

def subtract(a,b)
	return a - b
end

def sum(array)
	array.inject(:+) || 0
end

def multiply(*numbers)
	result = 1
	numbers.each do |x|
		result = result*x
	end
	return result
end


def factorial(number)
	(1..number).inject(:*) || 1
end