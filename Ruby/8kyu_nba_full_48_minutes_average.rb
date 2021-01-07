# Codewars - Kata Solution (Ruby)
# NBA FULL 48 MINUTES AVERAGE (8 kyu)

# Instructions
# An NBA game runs 48 minutes (Four 12 minute quarters). Players do not typically play the full game, subbing in and out as necessary. Your job is to extrapolate a player's points per game if they played the full 48 minutes.
# Write a function that takes two arguments, ppg (points per game) and mpg (minutes per game) and returns a straight extrapolation of ppg per 48 minutes rounded to the nearest tenth. Return 0 if 0.
# Examples:
# nba_extrap(12, 20) # 28.8
# nba_extrap(10, 10) # 48
# nba_extrap(5, 17) # 14.1
# nba_extrap(0, 0) # 0
# Notes:
# All inputs will be either be an integer or float.
# Follow your dreams!

# Solution
def nba_extrap(ppg, mpg)
  if [ppg, mpg].include?(0) then 0 else ((48.0 / mpg) * ppg).round(1) end
end


# Completed at : 2021-01-07 01:58:31 +0100
