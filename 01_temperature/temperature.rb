def ftoc(farenheit)
	farenheit = farenheit.to_f
	celsius = (farenheit - 32)*5/9
end

def ctof (celsius)
	celsius = celsius.to_f
	farenheit = (celsius * 9/5) + 32
end