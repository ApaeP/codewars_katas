# Codewars - Kata Solution (Ruby)
# FAKE BINARY (8 kyu)

# Instructions
# Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

# Solution
def fake_bin(s)
  s.chars.map { |i| i.to_i >= 5 ? 1 : 0 }.join
end


# Completed at : 2020-10-29T00:38:46.467Z
