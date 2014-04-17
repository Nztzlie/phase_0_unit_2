# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution
  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# Refactored Solution

# DRIVER TESTS GO BELOW THIS LINE
  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2]) ==rad

# Reflection 
# It was fun going through the matrix and looing for words, as well as
# interpreting code.

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution
def get_row(row)
    boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    boggle_board[row]
    # your code here
end


# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
puts get_row(1) ==  ["i", "o", "d", "t"]

# Reflection 
# It took me a while to realize I needed to include the boggle board in the code


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
def get_col(col)
    boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
    boggle_board[col]
    # your code here
end



# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
get_col(1) == ["r", "o", "c", "a"]
puts boggle_board[0][1] == "r"   # returns boggle_board[row_number][column_number]
puts boggle_board[2][1] == "c" #=> should be true
puts boggle_board[3][3] == "e" #=> should be true
puts boggle_board[2][3] == "x" #=> should be false

# Reflection 
# Similar to the previous exercise