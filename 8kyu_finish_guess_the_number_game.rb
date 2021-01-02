# Codewars - Kata Solution (Ruby)
# FINISH GUESS THE NUMBER GAME (8 kyu)

# Instructions
# Imagine you are creating a game where the user has to guess the correct number. But there is a limit of how many guesses the user can do.
# If the user tries to guess more than the limit, the function should throw an error.
# If the user guess is right it should return true.
# If the user guess is wrong it should return false and lose a life.
# Can you finish the game so all the rules are met?

# Solution
class Guesser
  def initialize(number, lives)
    @number = number
    @lives = lives
  end
  
  def guess(n)
    throw "You died." if @lives <= 0
    return true if @number == n 
    @lives -= 1
    false
  end
end


# Completed at : 2020-11-21T14:38:15.848Z
