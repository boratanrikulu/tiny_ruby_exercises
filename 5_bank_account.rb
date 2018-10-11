
class BankAccount
	attr_reader :name

	def initialize(name)
		@name = name
		@transactions = Array.new

		add_transactions(0, "beginnig")
	end

	def balance
		balance = 0
		@transactions.each do |transaction|
			balance += transaction[:amount]
		end

		return sprintf("%0.2f", balance)
	end

	def credit(amount, description)
		add_transactions(amount, description)
	end

	def debit(amount, description)
		add_transactions(-amount, description)
	end

	def print_register()
		puts "-" * 22
		puts " #{@name}'s Bank Account"
		puts "-" * 22
		puts " Amount\tDescription"
		puts "-" * 22
		@transactions.each do |transaction|
			puts "#{sprintf("%0.2f", transaction[:amount]).rjust(7)}\t#{transaction[:description].rjust(15)}"
		end
		puts "-" * 22
		puts " Balance : #{balance()}"
		puts "-" * 22
	end

	def to_s
		return "Name: #{@name}, Balance: balance()}"
	end

	private
		def add_transactions(amount, description)
			hash = { amount: amount, description: description }
			@transactions.push(hash)
		end
end

bank_account = BankAccount.new("Bora")

bank_account.credit(500, "scholarship")
bank_account.debit(150, "books")

bank_account.print_register()
