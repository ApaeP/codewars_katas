# Codewars - Kata Solution (Ruby)
# GRASSHOPPER  BUG SQUASHING (8 kyu)

# Instructions
# Terminal game bug squashing
# You are creating a text-based terminal version of your favorite board game. In the board game, each turn has six steps that must happen in this order: roll the dice, move, combat, get coins, buy more health, and print status.
# You are using a library that already has the functions below. Create a function named main that calls the functions in the proper order.
# - `combat`
# - `buy_health`
# - `get_coins`
# - `print_status`
# - `roll_dice`
# - `move`

# Solution
health, position, coins = 100, 0, 0

def main
  roll_dice; move; combat; get_coins; buy_health; print_status
end


# Completed at : 2020-11-07T01:21:10.776Z
