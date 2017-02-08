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
	
	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
	  if @reindeer_ranking.include?(reindeer_name)
	    @reindeer_ranking.delete(reindeer_name)
	    @reindeer_ranking << reindeer_name
	  end
	end	

	def gender=(gender)
		@gender = gender
	end
end

bob = Santa.new("male", "black")
#bob.speak
#bob.eat_milk_and_cookies("snickerdoodle")
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", 
	"prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# i = 0
# while i < example_genders.length do 
# 	santas << Santa.new(example_genders.sample, example_ethnicities.sample)
# 	i += 1
# end
# p santas
p bob
bob.get_mad_at("Vixen")
bob.celebrate_birthday
bob.gender = "female"
p bob