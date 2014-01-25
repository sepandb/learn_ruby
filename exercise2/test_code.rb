def make_change(amount)
	change = []

		while amount>0
			number_quarters = amount/25
			amount = amount%25
			number_dimes = amount/10
			amount = amount%10
			number_nickels = amount/5
			amount = amount%5
			number_pennies = amount
			amount = 0
		end
		number_quarters.times {change.push(25)}
		number_dimes.times {change.push(10)}
		number_nickels.times {change.push(5)}
		number_pennies.times {change.push(1)}
		print change

end


make_change(68)