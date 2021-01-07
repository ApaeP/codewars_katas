# Codewars - Kata Solution (Ruby)
# FIND THE POSITION (8 kyu)

# Instructions
# When provided with a letter, return its position in the alphabet.
# Input :: "a"
# Ouput :: "Position of alphabet: 1"
# This kata is meant for beginners. Rank and upvote to bring it out of beta

# Solution
def position(l)
 "Position of alphabet: #{('a'..'z').to_a.index(l) + 1}"
end


# Completed at : 2021-01-07 02:00:16 +0100
