# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Sides of die need to be defined and randomizer needs to be initialized.
# Output: Return a number corresponding to between 1 and the number of sides on the die.
# The die must have minimum of 1 side, otherwise will raise error.

# Steps:
# define a class Die
# define initialize
# define sides where sides 
# define roll where roll prints a random number between one and the number of sides defined

# Refactored Solution

class Die
  attr_reader :sides
  def initialize(sides)
    @sides = sides
    if sides < 1
      raise ArgumentError.new("Error! Requires sides")
    end
  end
  
  def sides
    @sides
  end
  
  def roll
    rand(@sides)+1
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
nine = Die.new(9)
total_sides = nine.sides
roll_results = nine.roll
print "This #{total_sides}-sided die was rolled and returned #{roll_results}."

# 5. Reflection 

=begin
It took me some time to understand how instance variables work, and am still working on
the best way to refactor.
=end