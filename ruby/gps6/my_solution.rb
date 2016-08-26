# Virus Predictor

# I worked on this challenge [Sierra].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Require_relative allows your to load and access a file. Require_relative is used when the file is in the same directory. 
#
require_relative 'state_data'

class VirusPredictor
  attr_reader :population_density, :population, :state
 
 #Call this whenever a new class object is created.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  
 #Calls predicted_deaths and speed_of_spread  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  
private

#Calculates the predicted deaths based on population_density, population, and state.
  def predicted_deaths
    if population_density < 50
       number_of_deaths = (population * 0.05).floor
    else
      multiplier = (population_density/50 * 0.1)
      number_of_deaths = (population * multiplier).floor
    end

    print "#{state} will lose #{number_of_deaths} people in this outbreak"

  end
   #Calculates the speed of spread of the virus based on population density and state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # every time the population density goes up by 50, the speed goes down by .5
    
    if population_density < 50
      speed = 2.5
    elsif population_density >= 200
      speed = 0.5
    else
      speed = 2.5 - (population_density/50 * 0.5).floor
    end
    

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE


STATE_DATA.each do |state, population_density, population|
  state = VirusPredictor.new(state, STATE_DATA[state][:population_density],
STATE_DATA[state][:population])
state.virus_effects
end 


#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# The "hashy hash" uses a hash rocket while the nested data structure uses symbol. The hash rocket gives you more
# flexibility in usage. The hash rocket allows you to use a string or a symbol as a key.

# What does require_relative do? How is it different from require?
# Require_relative allows your to load and access a file. Require_relative is used when the file is in the same directory. 

# What are some ways to iterate through a hash?
# For this challenge, I iterated through my hash using hash.each and a block method. You could also use  each_pair or
# each_key or each_value if you wanted to only iterate over a key or a value.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# I think I was still a bit confused about when instance variables were needed and when class methods
# needed parameters. I can clearly see that since those variables were included in initialization, it's 
# no longer necessary to pass them through the other methods.

# What concept did you most solidify in this challenge?
# This challenge really helped me understand constants, the use of private, and how to refactor my code. 



