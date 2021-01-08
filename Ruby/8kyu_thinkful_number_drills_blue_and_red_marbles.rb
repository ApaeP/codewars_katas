# Codewars - Kata Solution (Ruby)
# THINKFUL  NUMBER DRILLS BLUE AND RED MARBLES (8 kyu)

# Instructions
# You and a friend have decided to play a game to drill your statistical intuitions. The game works like this:
# You have a bunch of red and blue marbles. To start the game you grab a handful of marbles of each color and put them into the bag, keeping track of how many of each color go in. You take turns reaching into the bag, guessing a color, and then pulling one marble out. You get a point if you guessed correctly. The trick is you only have three seconds to make your guess, so you have to think quickly.
# You've decided to write a function, guessBlue() to help automatically calculate whether you should guess "blue" or "red". The function should take four arguments:
# the number of blue marbles you put in the bag to start
# the number of red marbles you put in the bag to start
# the number of blue marbles pulled out so far (always lower than the starting number of blue marbles)
# the number of red marbles pulled out so far (always lower than the starting number of red marbles)
# guessBlue() should return the probability of drawing a blue marble, expressed as a float. For example, guessBlue(5, 5, 2, 3) should return 0.6.

# Solution
def guess_blue(b_s, r_s, b_p, r_p)
  b, r = b_s - b_p, r_s - r_p
  b.to_f / (r+b)
end


# Completed at : 2020-10-30T00:23:16.180Z