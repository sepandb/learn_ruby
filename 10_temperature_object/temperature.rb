class Temperature

	def initialize(hash)
		@hash = hash
	end

	def to_fahrenheit
		if @hash.has_key?(:c)
			(@hash[:c]*9/5) + 32
		else
		 	@hash[:f]
		 end
	end

	def to_celsius
		if @hash.has_key?(:f)
			(@hash[:f] - 32)*5/9
		else
			(@hash[:c])
		end
	end

	def self.in_celsius(tempc)
		 tempc_hash = {:c => tempc}
		 self.new(tempc_hash)

	end

	def self.in_fahrenheit(tempf)
		tempf_hash = {:f => tempf}
		self.new(tempf_hash)
	end
end


class Celsius < Temperature
	def initialize(tempc)
		@hash = {:c => tempc}
	end
end

class Fahrenheit < Temperature
	def initialize(tempf)
		@hash = {:f => tempf}
	end
end
