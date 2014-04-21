# U2.W6: Testing Assert Statements

# I worked on this challenge by myself


# 2. Review the simple assert statement

# def assert
#  raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# assert is defined
# if the name matches the name listed in "assert," then "Assertion failed!" is not raised,
# otherwise it is raised.


# 3. Copy your selected challenge here
def essay (title, topic, date, thesis, pronoun)
  if male == true
    pronoun = "He"
  else
    pronoun = "She"
  end  
  essay_writer = "#{topic} was an important scientist. #{pronoun} was born in Germany in the year #{date}. #{thesis}. I want to read more about #{topic}."
end

# 1. DRIVER TESTS GO BELOW THIS LINE

# def essay ("Einstein", 1879, "He is known for his mass-energy equivalence formula.", true) 
#    == "Einstein was an important scientist. He was born in Germany in the year 1879. He is known for his mass-energy equivalence formula. I want to read more about Einstein."

# 4. Convert your driver test code from that challenge into Assert Statements
def assert
	raise "Assertion failed!" unless yield
end

name = "Einstein was an important scientist. He was born in Germany in the year 1879. He is known for his mass-energy equivalence formula. I want to read more about Einstein."
assert {name == "Einstein was an important scientist. He was born in Germany in the year 1879. He is known for his mass-energy equivalence formula. I want to read more about Einstein."}


# 5. Reflection
# It is interesting to try to better understand different things that driver code
# can do to test code
