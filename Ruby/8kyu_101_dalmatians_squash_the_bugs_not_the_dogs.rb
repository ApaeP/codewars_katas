# Codewars - Kata Solution (Ruby)
# 101 DALMATIANS  SQUASH THE BUGS NOT THE DOGS (8 kyu)

# Instructions
# Your friend has been out shopping for puppies (what a time to be alive!)... He arrives back with multiple dogs, and you simply do not know how to respond!
# By repairing the function provided, you will find out exactly how you should respond, depending on the number of dogs he has.
# The number of dogs will always be a number and there will always be at least 1 dog.
# Good luck!

# Solution
def how_many_dalmatians(n)
  dogs = ["Hardly any", "More than a handful!", "Woah that's a lot of dogs!", "101 DALMATIONS!!!"];
  n <= 10 ? dogs[0] : (n <= 50 ? dogs[1] : (n == 101 ? dogs[3] : dogs[2]))
end


# Completed at : 2020-10-30T04:22:39.176Z
