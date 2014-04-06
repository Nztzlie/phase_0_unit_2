# U2.W4: Title here


# I worked on this challenge with Greg Knudsen

# 2. Pseudocode

# Input: Essay checker template which accepts strings as parameters. Parameters include title, topic, date, thesis, pronoun.
# Output: Output essay prints template paragraph that includes parameters
# Steps:
# -Create variable that includes template
# -Template variable essay_writer equals string parameters (defined above)
# -Define whether male is true or false (where false = female)
# -Return response

# 3. Initial Solution

def essay (title, topic, date, thesis, pronoun)
  if male == true
    pronoun = "He"
  else
    pronoun = "She"
  end  
  essay_writer = "#{title}\n\n #{topic} was an important scientist. #{pronoun} was born in Germany in the year #{date}. #{thesis}. I want to read more about #{topic}."
end

# 4. Refactored Solution

def essay (title, topic, date, thesis, pronoun)
  if male == true
    pronoun = "He"
  else
    pronoun = "She"
  end  
  essay_writer = "#{title}\n\n #{topic} was an important scientist. #{pronoun} was born in Germany in the year #{date}. #{thesis}. I want to read more about #{topic}."
end

# 1. DRIVER TESTS GO BELOW THIS LINE

def essay ("Awesome Einstein", "Einstein", 1879, "He is known for his mass-energy equivalence formula.", true) 
    == "Awesome Einstein"\n\n"Einstein was an important scientist. He was born in Germany in the year 1879. He is known for his mass-energy equivalence formula. I want to read more about Einstein."

# 5. Reflection 
# I had trouble at the start understanding driver test code, and what was meant by that concept
# However, I now understand how useful it is to test driven development.




