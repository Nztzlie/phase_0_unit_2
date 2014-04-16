# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:The value of "guess"
# Output: returns whether guess is too high, too low, or true
# Steps:
# define the game, game takes guess as input
# initialize the game with an answer
# guess returns "high" if guess is larger than the answer
# guess returns "correct" if guess is equal to the answer
# guess returns "low" if guess is lower than the answer.
# define a method called solved? which returns true if guess is correct
        #false otherwise

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  def guess(value)
      print @answer
      if value > @answer
         return "high"
      elsif value < @answer
         return "low"
      else value == @answer
         @solved = true
         return "correct"
      end
  end
  def solved?
    return @solved
  end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(4)
puts game.guess()
puts game.solved?


# 5. Reflection 
=begin
This was a good exercise to try to understand instance variables 
and how classes functioned. 
=end

