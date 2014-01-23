class Array
	def sum
		sum = 0
		self.each do |number|
			sum = sum + number
		end
		sum
	end

	def square
		square_array= Array.new
		self.each do |number|
			square_array.push(number*number)
		end
		square_array
	end

	def square!
		self.each_index do |index|
			self[index] = self[index]*self[index]
		end
		self
	end

	def square!
		self.length.times do |i|
			self[i] = self[i] ** 2
		end
	end

end
