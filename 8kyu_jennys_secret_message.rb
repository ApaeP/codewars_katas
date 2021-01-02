# Codewars - Kata Solution (Ruby)
# JENNYS SECRET MESSAGE (8 kyu)

# Instructions
# Jenny has written a function that returns a greeting for a user. However, she's in love with Johnny, and would like to greet him slightly different. She added a special case to her function, but she made a mistake.
# Can you help her?

# Solution
def greet(name)
  return "Hello, my love!" if name == "Johnny"
  "Hello, #{name}!"
end


# Completed at : 2020-11-03T19:00:49.467Z
