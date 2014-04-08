# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Jason Matney
# 2) Natalie Baer

 # This is the file you should end up editing. 
 
def bakery_num(num_of_people, fav_food) # 2 parameters defined
  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1} # initialize hash, assigning values pertaining to
                                                        # number of people fed
  pie_qty = 0  # local variables defined, set at zero
  cake_qty = 0
  cookie_qty = 0
  
  has_fave = false  # setting up boolean

  my_list.each_key do |k| # referencing has on line 10 and looping through for key values.  Based 
                        #on whether key matches hash value, changes boolean.
    if k == fav_food
      has_fave = true
      fav_food = k  # this line appears to be extraneous
    end
  end

  
  if has_fave == false  # New if statement for has_fave == false. Could be more efficient
    raise ArgumentError.new("You can't make that food")  # If favorite is not one of the 3 items
  else
    fav_food_qty = my_list.values_at(fav_food)[0] #Return array at value of hash at given key 0. Refactor.
    if num_of_people % fav_food_qty == 0          # If divisible, then divide people by value
        num_of_food = num_of_people / fav_food_qty
        return "You need to make #{num_of_food} #{fav_food}(s)."
    else num_of_people % fav_food_qty != 0       # If not evenly divisible
        while num_of_people > 0                 
          if num_of_people / my_list["pie"] > 0  #testing if enough people for a pie
            pie_qty = num_of_people / my_list["pie"]
            num_of_people = num_of_people % my_list["pie"]
          elsif num_of_people / my_list["cake"] > 0    #testing if enough people for a cake
            cake_qty = num_of_people / my_list["cake"]
            num_of_people = num_of_people % my_list["cake"]
          else
            cookie_qty = num_of_people  # if less than 6, then cookies.
            num_of_people = 0
          end
        end
        return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end

