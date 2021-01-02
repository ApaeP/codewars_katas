# Codewars - Kata Solution (Ruby)
# VOWEL COUNT (7 kyu)

# Instructions
# Return the number (count) of vowels in the given string.
# We will consider a, e, i, o, u as vowels for this Kata (but not y).
# The input string will only consist of lower case letters and/or spaces.

# Solution
def getCount(inputStr)
 #your code here
 table = ["a","e","i","o","u"]
 sum = 0
 inputStr.split("").each do |i|
 sum +=1 if table.include?(i)
 end
 return sum
end


# Completed at : 2019-11-01T18:28:31.155Z
