# U2.W4: Refactor Cipher Solution


# I worked on this challenge:
Indigo Nai and Natalie Baer

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
=begin
1. What is the .to_a method doing? This method is taking the ('a'..'z') and making it into an array.
2. How does the rotate method work? What does it work on? Allows it to rotate through array (as though it were a wheel)
back to the beginning and shift that number of spaces (in this case, 4).
3. What is `each_char` doing? It is going over each character in the string and doing something at each character.
4. What does `sample` do? Sample is the same as saying "choose something random from array", in this case spaces.
5. Are there any other methods you want to understand better? this one: cipher = Hash[alphabet.zip(alphabet.rotate(4))]
6. Does this code look better or worse than your refactored solution of the original cipher code? What's better? What's worse?
7. Is this good code? What makes it good? What makes it bad? Its relatively easy to follow and relatively succinct, which is good.  It follows principles of DRY, naming conventions are good.  This code, however, is only re-usable for this particular cipher pattern, not for others, so it might be a bit simplistic.
=end

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?

p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")




# 5. Reflection 
# It was helpful to me to see this compact and relatively readable code as a good example.
