# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Sam

# 2. Pseudocode

# Input: credit card number as a string
# Output: true or false (depending on whether CC is valid)
# Steps: 
# Double every second digit in the cc starting from the second to last
# Any number 10 or greater split into its single digits
# Sum all of the digits
# Modulo the sum by 10 and if the remainder is zero, then return true (else false)
# 
# 

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(card)
    credit_card = card.to_s
    raise ArgumentError unless credit_card.length == 16
    @credit_card = credit_card.split("")
    @credit_card_ints = []
    @credit_card.each do |number|
      @credit_card_ints << number.to_i
    end
    
    @doubled_array = []
    @credit_card_ints.each_with_index do |int, i|
      if i.even?
        @doubled_array << i * 2
      else
        @doubled_array << i
      end
    end
    
    @final_array = []
    @doubled_array.each do |int|
      if int >= 10
        @final_array << int - 10
        @final_array << 1
      else
        @final_array << int
      end
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

# 4. Refactored Solution

# I know this can be refactored significantly but still trying to figure out how to do this.

# 1. DRIVER TESTS GO BELOW THIS LINE

p cc_test = CreditCard.new(4563960122001999)
p cc_test.validity

p cc_test2 = CreditCard.new(4408041234567893)
p cc_test2.validity


# 5. Reflection 

# I had some trouble starting out and understanding what was being asked of me here.
# However, once I had a better idea of the project as a whole, it was easier to understand.
# the most difficult part for me was looking at the test code at the end, where there was a discrepancy between
# the answers -one showed the result for @credit_card, and the othe rfor @credit_card_ints, which took a while 
# for me to resolve.