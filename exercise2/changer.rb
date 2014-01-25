class Changer
	def self.make_change(amount)
		change = []


		[25,10,5,1].each do |coin|
			coins = amount/coin
			amount = amount % coin
			coins.times { change.push(coin) }
		end


		# number_quarters = amount/25
		# amount = amount%25
		# number_dimes = amount/10
		# amount = amount%10
		# number_nickels = amount/5
		# amount = amount%5
		# number_pennies = amount
		# number_quarters.times {change.push(25)}
		# number_dimes.times {change.push(10)}
		# number_nickels.times {change.push(5)}
		# number_pennies.times {change.push(1)}
		change
	end
end
