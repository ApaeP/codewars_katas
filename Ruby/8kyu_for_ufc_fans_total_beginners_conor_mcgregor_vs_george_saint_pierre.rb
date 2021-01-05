# Codewars - Kata Solution (Ruby)
# FOR UFC FANS TOTAL BEGINNERS CONOR MCGREGOR VS GEORGE SAINT PIERRE (8 kyu)

# Instructions
# This is a beginner friendly kata especially for UFC/MMA fans.
# It's a fight between the two legends: Conor McGregor vs George Saint Pierre in Madison Square Garden. Only one fighter will remain standing, and after the fight in an interview with Joe Rogan the winner will make his legendary statement. It's your job to return the right statement depending on the winner!
# If the winner is George Saint Pierre he will obviously say:
# "I am not impressed by your performance."
# If the winner is Conor McGregor he will most undoubtedly say:
# "I'd like to take this chance to apologize.. To absolutely NOBODY!"
# Good Luck!

# Solution
def quote(fighter)
  return "I am not impressed by your performance." if fighter.downcase == 'george saint pierre'
  return "I'd like to take this chance to apologize.. To absolutely NOBODY!" if fighter.downcase == 'conor mcgregor'
end


# Completed at : 2020-10-30T03:09:57.487Z
