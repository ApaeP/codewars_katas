# Codewars - Kata Solution (Ruby)
# ENSURE QUESTION (8 kyu)

# Instructions
# Given a string, write a function that returns the string with a question mark ("?") appends to the end, unless the original string ends with a question mark, in which case, returns the original string.
# ensure_question("Yes") # => "Yes?" 
# ensure_question("No?") # => "No?"

# Solution
def ensure_question(s)
  s[-1] == "?" ? s : s + "?"
end


# Completed at : 2020-11-21T13:22:46.703Z
