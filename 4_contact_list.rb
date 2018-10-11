
def ask(question, kind="string") # string is default
	print question + " "
	answer = gets.chomp
	answer = answer.to_i if kind == "integer"
	return answer
end

def add_contact()
	contact = {name: "", phone_numbers: []}
	contact[:name] = ask("What is your name ?")

	answer = "y"
	until answer == "n"
		answer = ask("Do you want to add number ? (y/n)")
		if answer == "y"
			phone = ask("Enter a phone number :", "integer")
			contact[:phone_numbers].push(phone)
		end
	end

	return contact
end

def show_contact(contact_list)
	puts "----------"
	contact_list.each do |contact|
		puts "Name : #{contact[:name]}"

		if contact[:phone_numbers].size > 0
			contact[:phone_numbers].each do |phone_number|
				puts "Phone Number : #{phone_number}"
			end
		end
		puts "----------"
	end
end

def main
	contact_list = []

	answer = "y"
	until answer == "n"
		answer = ask("Do you want to add a new contact ? (y/n)")
		if answer == "y"
			contact_list.push(add_contact())
			puts "> The contact is added !"
		end
	end

	answer = ask("Do you want to see all contact ? (y/n) ")
	show_contact(contact_list) if answer.downcase == "y"
end

main
