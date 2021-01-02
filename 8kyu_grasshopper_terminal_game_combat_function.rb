# Codewars - Kata Solution (Ruby)
# GRASSHOPPER  TERMINAL GAME COMBAT FUNCTION (8 kyu)

# Instructions
# Create a combat function that takes the player's current health and the amount of damage recieved, and returns the player's new health. Health can't be less than 0.

# Solution
def combat(health, damage)
  [health - damage, 0].max
end


# Completed at : 2020-11-01T20:28:54.732Z
