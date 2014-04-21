# U2.W6: Create a BoggleBoard Class


# I worked on this challenge with Jason Matney.


# 2. Pseudocode
# initialize board
# create_word using coordinates and join them
# write methods to get_row and get_col, where get_col will require using .map



# 3. Initial Solution
class BoggleBoard
 
 	def initialize(board)
 		@board = board
 	end
 	
 	def create_word(*coords)
 	    coords.map { |coord| @board[coord.first][coord.last]}.join("")
 	end

 	def get_row(row)
 		@board[row]
 	end

 	def get_col(col)
 		@board.map {|row| row[col]}
 	end
end
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution

#none




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
def assert
  raise "The Assertion has Failed!" unless yield
end

assert {boggle_board.create_word([2,1], [1,1], [1,2], [0,3]) == "code"} 
assert {boggle_board.create_word([3,2]) == "k"} 
assert {boggle_board.get_row(0) == ["b", "r", "a", "e"]}
assert {boggle_board.get_col(0) == ["b", "i", "e", "t"]}

# 5. Reflection 
# it was interesting to think about what the "columns" were in computer science terms.