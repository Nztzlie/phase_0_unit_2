# U2.W5: Bakery Challenge GPS

# I worked on this challenge with Jason Matney

# Our Refactored Solution

 # Capture the remainder from each division to be able to make additional foods
 # Prioritize the fave food (evaluate this first, then go through the remaining food options)
 
def bakery_num(num_of_people, fav_food) # 2 parameters defined
  list = {"pie" => 8, "cake" => 6, "cookie" => 1} # initialize hash, assigning values pertaining to
                                                        # number of people fed
  pies = 0  # local variables defined, set at zero
  cakes = 0 # 
  cookies = 0

  if list.has_key?(fav_food) == false
      raise ArgumentError.new("You can't make that food")
  end







#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

#  Reflection 



