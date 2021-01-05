# Codewars - Kata Solution (Ruby)
# GRASSHOPPER  TERMINAL GAME MOVE FUNCTION (8 kyu)

# Instructions
# Terminal game move function
# In this game, the hero moves from left to right. The player rolls the dice and moves the number of spaces indicated by the dice two times.
# Create a function for the terminal game that takes the current position of the hero and the roll (1-6) and return the new position.
# Example:
# move(3, 6) should equal 15

# Solution
def move (p, r)
  p + r*2
end


# Completed at : 2020-10-30T04:52:32.643Z
