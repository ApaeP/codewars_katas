# Codewars - Kata Solution (Ruby)
# SCALING SQUARED STRINGS (7 kyu)

# Instructions
# You are given a string of n lines, each substring being n characters long. For example:
# s = "abcd\nefgh\nijkl\nmnop"
# We will study the "horizontal" and the "vertical" scaling of this square of strings.
# A k-horizontal scaling of a string consists of replicating k times each character of the string (except '\n').
# Example: 2-horizontal scaling of s: => "aabbccdd\neeffgghh\niijjkkll\nmmnnoopp"
# A v-vertical scaling of a string consists of replicating v times each part of the squared string.
# Example: 2-vertical scaling of s: => "abcd\nabcd\nefgh\nefgh\nijkl\nijkl\nmnop\nmnop"
# Function scale(strng, k, v) will perform a k-horizontal scaling and a v-vertical scaling.
# Example: a = "abcd\nefgh\nijkl\nmnop"
# scale(a, 2, 3) --> "aabbccdd\naabbccdd\naabbccdd\neeffgghh\neeffgghh\neeffgghh\niijjkkll\niijjkkll\niijjkkll\nmmnnoopp\nmmnnoopp\nmmnnoopp"
# Printed:
# abcd   ----->   aabbccdd
# efgh            aabbccdd
# ijkl            aabbccdd
# mnop            eeffgghh
#                 eeffgghh
#                 eeffgghh
#                 iijjkkll
#                 iijjkkll
#                 iijjkkll
#                 mmnnoopp
#                 mmnnoopp
#                 mmnnoopp
# Task:
# Write function scale(strng, k, v) k and v will be positive integers. If strng == "" return "".

# Solution
def scale(s, k, n)
  s.split("\n").map { |e| e.chars.map { |f| f * k }.join }.map { |g| Array.new(n, g) }.flatten.join("\n")
end


# Completed at : 2020-12-19T02:35:39.027Z
