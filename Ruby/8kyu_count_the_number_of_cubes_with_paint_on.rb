# Codewars - Kata Solution (Ruby)
# COUNT THE NUMBER OF CUBES WITH PAINT ON (8 kyu)

# Instructions
# Upon arriving at an interview, you are presented with a solid blue cube. The cube is then dipped in red paint, coating the entire surface of the cube. The interviewer then proceeds to cut through the cube in all three dimensions a certain number of times.
# The number of times that the cube is cut in each dimension --> the argument 'cuts'.
# To solve the puzzle you must create a function that returns an integer representing the total number of small cubes with at least one red side.
# Examples:
# countSquares(2) --> 26
# countSquares(4) --> 98

# Solution
def count_squares(cuts)
  6*cuts**2+2
end


# Completed at : 2020-11-03T02:26:58.151Z
