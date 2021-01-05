# Codewars - Kata Solution (Ruby)
# NAME SHUFFLER (8 kyu)

# Instructions
# Write a function that returns a string in which firstname is swapped with last name.
# name_shuffler('john McClane'); => "McClane john"

# Solution
def name_shuffler(str)
  str.split.reverse.join(' ')
end


# Completed at : 2020-11-07T02:39:39.576Z
