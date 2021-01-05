# Codewars - Kata Solution (Ruby)
# WHO ATE THE COOKIE (8 kyu)

# Instructions
# For this problem you must create a program that says who ate the last cookie. If the input is a string then "Zach" ate the cookie. If the input is a float or an int then "Monica" ate the cookie. If the input is anything else "the dog" ate the cookie. The way to return the statement is: "Who ate the last cookie? It was (name)!"
# Ex: Input = "hi" --> Output = "Who ate the last cookie? It was Zach! (The reason you return Zach is because the input is a string)
# Note: Make sure you return the correct message with correct spaces and punctuation.
# Please leave feedback for this kata. Cheers!

# Solution
def cookie(x)
  "Who ate the last cookie? It was #{x.is_a?(String) ? 'Zach' : x.is_a?(Numeric) ? 'Monica' : 'the dog'}!"
end


# Completed at : 2020-11-03T16:40:39.650Z
