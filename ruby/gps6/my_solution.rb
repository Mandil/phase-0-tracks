# Virus Predictor

# I worked on this challenge [by myself(Hassan AlMandil), with: Michael Glaser].
# We spent [3] hours on this challenge.


=begin
  # EXPLANATION OF require_relative
 require_relative and require tells the program that this file is required here, its 
 like we copy and paste the code of state_data.rb in the beginning of the driver code here

 there is no diffrent in the function but there is a differnt with the file location
 we used here  require './state_data.rb' instead of require_relative 'state_data' to test 
 it and it worked as expected
  
=end

#require_relative 'state_data'
require './state_data.rb'



class VirusPredictor

# intilizing three variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  # @factors_hash: is a hash created to host factors needed to calculate speed_of_spread 
  # and predicted_deaths
    @factors_hash = {
      0...50 => [0.05, 2.5],
      50...100 => [0.1, 2],
      100...150 => [0.2, 1.5],
      150...200 => [0.3, 1],
      200...20000 => [0.4, 0.5]
    }
  end

# to call the 2 private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# this method calculate predicted_deaths in a given state (use population_density and population)
  def predicted_deaths
    # predicted deaths is solely based on population density
    factor = 0
    @factors_hash.select { |range,value| if range.include?(@population_density) then factor = value[0] end}
    number_of_deaths = (@population * factor).floor
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# this method calculate speed_of_spread in a given state (use population_density)
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    @factors_hash.dig { |range,value| if range.include?(@population_density) then speed = value[1] end} 

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each { |state, info_hash| VirusPredictor.new(state, info_hash[:population_density], info_hash[:population]).virus_effects }



#=======================================================================
# Reflection Section
=begin
  
What are the differences between the two different hash syntaxes shown in the state_data file? 
- The keys in the main hash are strings like "Alabama" 
  while they are Symbols on the inner hash like: population_density:

What does require_relative do? How is it different from require?
- link another file to the current, its as we copied the code on 
  the require_relative to the active file 
  there is no diffrent in the function but there is a differnt with the file location
  we used here  require './state_data.rb' instead of require_relative 'state_data' to test 
  it and it worked as expected

What are some ways to iterate through a hash?
- .select .map .each and many others

When refactoring virus_effects, what stood out to you about the variables, if anything?
- All the variables are available on class level, 
  so we dont need to push to other methods that this method is calling

What concept did you most solidify in this challenge?
- one of the issues to deside which refactoring way is more suitable for example
  to refactor the if elsif in predicted_deaths we had to chose between three ways 
  which they are as followed:
  # Solution 1: using Range and a case statement ============== works
factor = case @population_density
when 0...50 then 0.05
when 50...100 then 0.1
when 100...150 then 0.2
when 150...200 then 0.3
else 0.4
end

number_of_deaths = (@population * factor).floor


 ==============  ==============  ============== 

 
# Solution 2: simplified if ============== works
factor = 0.05 if (0...50).include?(@population_density)
factor = 0.1 if (50...100).include?(@population_density)
factor = 0.2 if (100...150).include?(@population_density)
factor = 0.3 if (150...200).include?(@population_density)
factor = 0.4 if (200...20000).include?(@population_density)

number_of_deaths = (@population * factor).floor


 ==============  ==============  ============== 


# Solution 3: using Range and hash ============== works
factor_hash = {
    0...50 => 0.05,
    50...100 => 0.1,
    100...150 => 0.2,
    150...200 => 0.3,
    200...20000 => 0.4
  }
factor = 0
factor_hash.select { |range,value| if range.include?(@population_density) then factor = value end}

number_of_deaths = (@population * factor).floor



=end