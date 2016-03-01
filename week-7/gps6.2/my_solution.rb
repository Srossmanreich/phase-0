# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  
  # Initializing class -- taking the state of origin, pop density and population size; creates those variables inside the class

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls the two methods below passing instance variables as parameters 
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # private limits access to the methods below where it is called
  
  private
  
  # determines predicted deaths in a state based on population density and population size (+ a fixed % to apply to it)
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = if @population_density >= 200
                          (@population * 0.4).floor
                      elsif @population_density >= 150
                          (@population * 0.3).floor
                      elsif @population_density >= 100
                          (@population * 0.2).floor
                      elsif @population_density >= 50
                          (@population * 0.1).floor
                      else
                          (@population * 0.05).floor
                      end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  
  # takes in population_density then calculates and prints speed
  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    speed = if @population_density >= 200
              0.5
            elsif @population_density >= 150
              1
            elsif @population_density >= 100
              1.5
            elsif @population_density >= 50
              2
            else
              2.5
            end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

STATE_DATA.each do |state, data|
  state_object = VirusPredictor.new(state, data[:population_density], data[:population])
  state_object.virus_effects
end

#=======================================================================
# Reflection Section

# 1) What are the differences between the two different 
# hash syntaxes shown in the state_data file?

# You can use a rocket or a symbol to set up key-value pairs in a hash.

# 2) What does require_relative do? How is it different from 
# require?

# require_relative grabs data from a file in the same directory
# whereas require can grab a library from elsewhere

# 3) What are some ways to iterate through a hash?

# You can use a loop (like the each method) or call specific
# symbols

# 4) When refactoring virus_effects, what stood out to you 
# about the variables, if anything?

# Mainly that the parameter variables weren't necessary. You
# only needed to call the methods.

# 5) What concept did you most solidify in this challenge?

# I think I am still working on my DRYness when writing code
# and sometimes struggle to explain myself well. I think I am
# doing better though and wasn't confused by any of the methods
# we used today.

