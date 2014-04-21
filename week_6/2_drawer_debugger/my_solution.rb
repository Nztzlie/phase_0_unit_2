# U2.W6: Drawer Debugger


# I worked on this challenge by myself


# 2. Original Code

class Drawer

	attr_reader :contents

	# Are there any more methods needed in this class?
		def Silverware
		end

		def initialize
			@contents = []
			@open = true
		end

		def open
			@open = true
		end

		def close
			@open = false
		end 

		def add_item(item)
			@contents << item
		end

		def remove_item(item = @contents.pop) #what is `#pop` doing? Removes last element in array
			@contents.delete(item)
		end

		def dump  # what should this method return? Returns empty array
			puts "Your drawer is empty."
		end

		def view_contents
			puts "The drawer contains:"
			@contents.each {|silverware| puts "- " + silverware.type }
		end
end



class Silverware
	
	attr_reader :type

		# Are there any more methods needed in this class?

		def initialize(type, clean = true)
			@type = type
			@clean = clean
		end

		def clean_silverware
			@clean = true	
		end

		def eat
			@result = puts "eating with the #{type}"
			@clean = false
		end

end



knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? contents of drawer after everything 
# it contains has been dumped, so should say "your drawer is empty" and return empty array

silverware_drawer.add_item(fork)

fork = Silverware.new("fork") #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
# puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

spoon = Silverware.new("spoon")
fork = Silverware.new("fork")

def assert
  raise "Assertion failed!" unless yield
end

assert { spoon.clean_silverware == true }

# 5. Reflection 
# its interesting to see examples of how to debug code, because it tends to be
# very frustrating when code does not run properly
