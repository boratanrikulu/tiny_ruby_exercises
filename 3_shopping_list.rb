
def ask(message)
	print message + " "
	return gets.chomp
end

def create_list()
	name = ask("What is the name list ?")

	return hash = { name: name, items: Array.new }
end

def add_list_item()
	name = ask("What is the item name to add ? ")
	quantity = ask("How much is the #{name} ?")
	unless quantity.to_i
		quantity = 0
		puts "Please use only integers as the quantity."
	end

	return hash = { name: name, quantity: quantity }
end

def print_list(shopping_list)
	puts "# #{shopping_list[:name]} #"

	print_separator
	shopping_list[:items].each do |item|
		puts "Item: #{item[:name]}"
		puts "Quantity: #{item[:quantity]}"
		print_separator
	end
end

def print_separator(character="-")
	puts character * 80
end


shopping_list = create_list()
shopping_list[:items].push(add_list_item)
shopping_list[:items].push(add_list_item)
shopping_list[:items].push(add_list_item)

puts ""
print_list(shopping_list)
