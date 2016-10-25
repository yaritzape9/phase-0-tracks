# Virus Predictor

# I worked on this challenge [by myself].
# We spent [#1] hour on this challenge.

# EXPLANATION OF require_relative
# Require_relative looks up the file name in the local directory.
# It is analogous to copying/importing the data in that file and
# pasting it in the current file.  Require looks up the full path
# in the Ruby file-tree.

require_relative 'state_data'

class VirusPredictor
  # its taking in 3 parameters and then its creating 3 instance variables state,population and population density.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
 # this method is calling 2 other methods predicted deaths and speed of spread and then calling the instance variables as its parameters
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
 # it takes in the density and checks if its above a certain number which it can then do the math to show us the number of deaths in the population. Then it will print out everything in a string.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
#takes in parameters of population density and state again it checks population desity and sees if it is above a certain number which it will then increment speed by a certain condition. The nprints out again
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
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


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, state_info|
  name_of_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
name_of_state.virus_effects
end
#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
  #they are nested therefore the format looks different.
# What does require_relative do? How is it different from require?
    #require relative looks up a file in the local directory. And require looks up the whole path in the file tree.
# What are some ways to iterate through a hash?
  # the .each method is a great way of iterating through a hash and or a loop.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # that intances dont have to be in the parameters because they are instances.
# What concept did you most solidify in this challenge?
# instances and scopes of variables
