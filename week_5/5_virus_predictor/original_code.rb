# U2.W5: Virus Predictor

# I worked on this challenge with Indigo.

# EXPLANATION OF require_relative
#
# The require relative defines a dependency to another file based on a relative filepath, 
# including it as if it was in tha same scope as thir file which has required it.

require_relative 'state_data'

class VirusPredictor

  # This is the constructor for the class
  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density 
    @region = region
  end

  # publically accessible method that allows access to information from the private functions.
  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths
    speed_of_spread
  end

  #everything under this can only be accessed from within the scope of this class. If it were pasted
  #above, virus_effects would be inaccessible outside the class.
  private 

  # Based on population predicts minimum number of deaths.
  def predicted_deaths
    number_of_deaths = @population_density >= 50 ? (@population*((@population_density/50) *0.1)).floor : (@population * 0.05).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
 
  # Based on population, how quickly the virus will spread. It is additively 
  # higher as the population density increases.
  def speed_of_spread #in months
    multipler = (@population_density/50).round
    speed = @population_density < 200 ? 5-(multipler*0.5) : 5;  
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key,value|
  predictor = VirusPredictor.new(key,value[:population_density],value[:population], value[:region],value[:regional_spread])
  predictor.virus_effects
end



=begin
The program is predicting and outputting the rate at which a virus outbreak spreads across different states depending on population, 
population density, region, and regional spread.

REQUIRE RELATIVE:

The require relative defines a dependency to another file based on a relative filepath, including it as if it was in tha same scope as thir file which has required it.

The state data file is a hash containing hashes.  States are strings which are associate (using "=>") with
another hash which contains associated variables.  The main hash uses string literals to define its keys
while the nested hashes are defining their keys as variable names.



=end