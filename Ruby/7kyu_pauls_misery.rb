# Codewars - Kata Solution (Ruby)
# PAULS MISERY (7 kyu)

# Instructions
# Paul is an excellent coder and sits high on the CW leaderboard. He solves kata like a banshee but would also like to lead a normal life, with other activities. But he just can't stop solving all the kata!!
# Given an array (x) you need to calculate the Paul Misery Score. The values are worth the following points:
# kata = 5
# Petes kata = 10
# life = 0
# eating = 1
# The Misery Score is the total points gained from the array. Once you have the total, return as follows:
# < 40 = 'Super happy!'
# < 70 >= 40 = 'Happy!'
# < 100 >= 70 = 'Sad!'
# > 100 = 'Miserable!'

# Solution
def paul(x)
  y = { 'kata' => 5, 'Petes kata' => 10, 'life' => 0, 'eating' => 1 }
  (sc = x.map { |e| y[e] }.sum) >= 100 ? 'Miserable!' : sc >= 70 ? 'Sad!' : sc >= 40 ? 'Happy!' : 'Super happy!'
end


# Completed at : 2021-04-10 00:57:37 +0200
