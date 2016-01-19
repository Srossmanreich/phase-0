# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require imports gems into a ruby file (require uses direct paths). 
# Require_relative links files that are in the same folder
# require_relative 'state_data'

require_relative 'state_data'

class VirusPredictor
  
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end  

  #returns the output of predicted_deaths method and speed_of_spread method  
  def virus_effects
    print "#{@state} will lose #{predicted_deaths} people in this outbreak and will spread across the state in #{months_to_spread} months.\n\n"
  end

  private

  #returns the number of predicted deaths relative to the population density of the given state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    if @population_density >= 200
      (0.4*@population).floor
    elsif @population_density >= 150
      (0.3*@population).floor
    elsif @population_density >= 100
      (0.2*@population).floor
    elsif @population_density >= 50
      (0.1*@population).floor
    else
      (0.05*@population).floor
    end


  end
  
  #returns the number of months it would take for the virus to spread across the state
  def months_to_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
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


  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#PSEUDOCODE
=begin
1) Take the US state array and iterate over each state-level item
2) Run the class for each state

=end

# "Alabama" => {population_density: 94.65, population: 4822023}

STATE_DATA.each { |state, data| VirusPredictor.new(state).virus_effects }


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
  
1) What are the differences between the two different hash 
syntaxes shown in the state_data file?

One uses keys and the other uses symbols

2) What does require_relative do? How is it different from 
require?

require_relative pulls in data from a file in the same directory.
require without the relative links your rb file with other gems,
files, etc. but requires a direct path.

3) What are some ways to iterate through a hash?

You can use built in methods or create a loop yourself.

4) When refactoring virus_effects, what stood out to you about 
the variables, if anything?

In that specific case, the parameters listed in the methods used
weren't necessary

5) What concept did you most solidify in this challenge?

Thinking through the human side of refactoring. It isn't just about
having your code on one line or being DRY. You also have to think
about what makes the code the easiest for users to use.

=end

