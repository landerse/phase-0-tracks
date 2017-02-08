class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer",
		 "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end
end

# bob = Santa.new
# bob.speak
# bob.eat_milk_and_cookies("snickerdoodle")
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", 
	"prefer not to say", "Mystical Creature (unicorn)", "N/A"]

i = 0
while i < example_ethnicities.length do 
	santas << Santa.new(example_genders.sample, example_ethnicities.sample)
	i += 1
end
p santas