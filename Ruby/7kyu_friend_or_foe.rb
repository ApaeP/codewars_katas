# Codewars - Kata Solution (Ruby)
# FRIEND OR FOE (7 kyu)

# Instructions
# Make a program that filters a list of strings and returns a list with only your friends name in it.
# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not...
# Ex: Input = ["Ryan", "Kieran", "Jason", "Yous"], Output = ["Ryan", "Yous"]
# i.e.
# friend ["Ryan", "Kieran", "Mark"] `shouldBe` ["Ryan", "Mark"]
# Note: keep the original order of the names in the output.

# Solution
def friend(a)
  a.select { |e| e.length == 4 }
end


# Completed at : 2020-12-19T02:48:11.185Z
