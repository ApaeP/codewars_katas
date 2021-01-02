# Codewars - Kata Solution (Ruby)
# STRING REPEAT (8 kyu)

# Instructions
# Write a function called repeat_str which repeats the given string src exactly count times.
# repeatStr(6, "I") // "IIIIII"
# repeatStr(5, "Hello") // "HelloHelloHelloHelloHello"

# Solution
def repeat_str (n, s)
  Array.new(n, s).join
end
def repeat_str (n, s)
  s*n
end


# Completed at : 2020-10-29T00:34:03.809Z
