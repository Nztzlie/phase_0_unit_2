# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# Initialize the pez dispenser, with flavors to represent pez
# Define counting the pez remaining
# Define taking pez from dispenser
# Define showing the flavors in the dispenser

# 3. Initial Solution

class PezDispenser

	def initialize (flavors)
		@flavors
	end

	def remaining_pez
		@flavors.size
	end

	def eat_pez
		@flavors.pop
	end

	def add_pez
		@flavors.push(flavor)
	end

	def see_pez
		@flavors
	end
 
end
 


# 4. Refactored Solution


#none



# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




# 5. Reflection 
# it was interesting to see the different things that can be performed on an object