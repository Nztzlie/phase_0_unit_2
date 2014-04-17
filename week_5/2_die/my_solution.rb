# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
  		if labels < 1
  		raise ArgumentError("Error! Requires sides")
  		end
  	@labels = labels
  end

  def sides
  	return @labels.length
  end

  def roll
    @labels[rand(@labels.length)]
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
