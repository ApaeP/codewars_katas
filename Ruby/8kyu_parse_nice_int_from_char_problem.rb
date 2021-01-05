# Codewars - Kata Solution (Ruby)
# PARSE NICE INT FROM CHAR PROBLEM (8 kyu)

# Instructions
# Ask a small girl - "How old are you?". She always says strange things... Lets help her!
# For correct answer program should return int from 0 to 9.
# Assume test input string always valid and may look like "1 year old" or "5 years old", etc.. The first char is number only.

# Solution
def get_age(age)
  age[0].to_i
end


# Completed at : 2020-11-03T02:45:57.636Z
