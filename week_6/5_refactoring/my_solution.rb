# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution
class CreditCard

    def initialize(card)
    credit_card = card.to_s
    raise ArgumentError unless credit_card.length == 16
    @credit_card_ints = []
    @credit_card_ints = credit_card.split("").map { |number| number.to_i }
    #end
    
    @doubled_array = []
    @credit_card_ints.each_with_index do |int, i|
      i.even? ? @doubled_array << i * 2 : @doubled_array << i
    end
    
    @final_array = []
    @doubled_array.each do |int|
      int >= 10 ? @final_array << int - 10 && @final_array << 1 : @final_array << int
    end

    sum = 0
    @final_array.each do |int|
      sum += int
    end

    @validity = sum % 10 == 0
    end
  
    def validity
      @validity
    end
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


cc_test = CreditCard.new(4563960122001999)
p cc_test.validity 

cc_test2 = CreditCard.new(4408041234567893)
p cc_test2.validity


# Reflection 
# There was a lot of room for me to improve on this credit card challenge!
