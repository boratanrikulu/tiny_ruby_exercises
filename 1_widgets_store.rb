
def ask(message)
	print message + " "
	return gets.chomp
end

def price(value)
	if value >= 100
		price_per_unit = 8
	elsif value >= 50
		price_per_unit = 9
	else
		price_per_unit = 10
	end
	
	return value * price_per_unit
end

puts "Welcome to Widget Store!"
puts ""
answer = ask "How many widgets are you ordering ? "

price = price(answer.to_i)

if price != 0
	puts "For #{answer} widgets you need to pay #{price}$."
else
	puts "Please input only integer as the widgets value."	
end
