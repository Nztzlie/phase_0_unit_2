# U2.W4: Cipher Challenge

# I worked on this challenge with Nick Giovacchini

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  #This splits the strings, so that each key is an individual string.
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # Hashes do not have location, so shifting four spaces needs to be coded into the hash,
            "h" => "d",   # unlike with an array.
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here? # Iterating through each string value and assigning the value x to each character in turn. 
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? # False because it hasn't gone through the cipher yet so it doesn't the expected unencrypted outcome yet. 
    cipher.each_key do |y| # What is #each_key doing here? # It is assigning a key value that corresponds to the input. 
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? # It is comparing if the input value is equal to the key value. It tracks if x is the same as y. Those values are really a split version of the input value. 
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here? This breaks to prevent infinite looping.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? 
        # these characters act as spaces. if target equals any of these symbols, it outputs " " (a space)
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
          # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? # This is looking for instances not covered in examples above. If its not found in the cipher it simply returns itself. 
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. #This is finding digits 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate... 
  # This takes digits found, and divides them by 100.
  end  
  return decoded_sentence # What is this returning? # This is the output value which is == decoded_sentence.join("")   
end

# Your Refactored Solution
def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  cipher = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

  input.each do |x|
    # code = 0
    found_match = false
    code = 0
    cipher.each do |y|
      if x == y
        decoded_sentence << cipher[code-4]
        found_match = true
        # code +=1
        break
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        decoded_sentence << " "
        found_match = true
        break
      end
      code += 1
    end
    if not found_match
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")

  if decoded_sentence.match(/\d+/)
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }
  end
  return decoded_sentence
end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
#This article was interesting, getting the alphabet to automatically move four spots was an interesting challenge
# Had a good pairing session for this one.  Would have been nice to get a shorter final code, but had trouble getting 
# the code to run when shortening further sections.
