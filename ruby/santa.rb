class Santa

	def initialize
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
end

bob = Santa.new
bob.speak
bob.eat_milk_and_cookies("snickerdoodle")