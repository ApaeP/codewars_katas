# Codewars - Kata Solution (Ruby)
# BILLIARDS TRIANGLE (7 kyu)

# Instructions
# Remember the triangle of balls in billiards? To build a classic triangle (5 levels) you need 15 balls. With 3 balls you can build a 2-level triangle, etc.
# For more examples,
# pyramid(1) == 1

# pyramid(3) == 2

# pyramid(6) == 3

# pyramid(10) == 4

# pyramid(15) == 5
# Write a function that takes number of balls (≥ 1) and calculates how many levels you can build a triangle.

# Solution
def pyramid(balls)
  ((Math.sqrt(balls * 8 + 1) - 1) / 2).floor
end


# Completed at : 2021-04-12 23:12:45 +0200
