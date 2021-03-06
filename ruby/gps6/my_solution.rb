# Virus Predictor

# I worked on this challenge with: Matthew.
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative links data we've written and needs a path
#
require_relative 'state_data'

class VirusPredictor
attr_reader :state, :population, :population_density

  #Initializes instance of VirusPredictor, populates variables
  #with given inputs
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Runs the other two methods used to predict death and speed of death.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #Calculates number of deaths based on density and population
  def predicted_deaths
    # predicted deaths is solely based on population density
    if population_density >= 200
      multiplier = 0.4
    elsif population_density >= 150
      multiplier = 0.3
    elsif population_density >= 100
      multiplier = 0.2
    elsif population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end

    number_of_deaths = (population * multiplier).floor

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end

  #Calculates speed of death in months
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if population_density >= 200
      speed = 0.5
    elsif population_density >= 150
      speed = 1
    elsif population_density >= 100
      speed = 1.5
    elsif population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |key,value|
  state = VirusPredictor.new(key, value[:population_density], value[:population]) 
  state.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
  -Symbol assignment, and hash rocket assignment.
What does require_relative do? How is it different from require?
  -require_relative provides access to a file, but needs a path. 
  -require just includes a library that already exists that is available to everyone.
What are some ways to iterate through a hash?
We used .each, but .map also iterates through.
When refactoring virus_effects, what stood out to you about the variables, if anything?
  -They were unneccessarily being passed in.
What concept did you most solidify in this challenge?
.each iteration.
=end