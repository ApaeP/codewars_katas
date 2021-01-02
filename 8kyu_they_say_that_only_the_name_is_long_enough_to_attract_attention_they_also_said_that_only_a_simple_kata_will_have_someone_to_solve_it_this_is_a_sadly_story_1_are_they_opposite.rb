# Codewars - Kata Solution (Ruby)
# THEY SAY THAT ONLY THE NAME IS LONG ENOUGH TO ATTRACT ATTENTION THEY ALSO SAID THAT ONLY A SIMPLE KATA WILL HAVE SOMEONE TO SOLVE IT THIS IS A SADLY STORY 1 ARE THEY OPPOSITE (8 kyu)

# Instructions
# Task
# Give you two strings: s1 and s2. If they are opposite, return true; otherwise, return false. Note: The result should be a boolean value, instead of a string.
# The opposite means: All letters of the two strings are the same, but the case is opposite. you can assume that the string only contains letters or it's a empty string. Also take note of the edge case - if both strings are empty then you should return false/False.
# Examples
# isOpposite("ab","AB") should return true;
# isOpposite("aB","Ab") should return true;
# isOpposite("aBcd","AbCD") should return true;
# isOpposite("AB","Ab") should return false;
# isOpposite("","") should return false;

# Solution
def is_opposite(s1, s2)
  s1.empty? ? false : s1.swapcase == s2
end


# Completed at : 2020-11-03T02:38:43.785Z
