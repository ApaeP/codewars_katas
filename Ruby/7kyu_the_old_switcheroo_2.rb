# Codewars - Kata Solution (Ruby)
# THE OLD SWITCHEROO 2 (7 kyu)

# Instructions
# This is a follow up from my kata The old switcheroo</br/>
# Write
# def encode(str)
# that takes in a string str and replaces all the letters with their respective positions in the English alphabet.
# encode('abc') == '123'   # a is 1st in English alpabet, b is 2nd and c is 3rd
# encode('codewars') == '315452311819'
# encode('abc-#@5') == '123-#@5'
# String are case sensitive.

# Solution
def encode(s)
  s.downcase.each_char.map { |e| ('a'..'z').to_a.include?(e) ? ('a'..'z').to_a.zip((1..26).to_a).to_h[e].to_s : e }.join
end


# Completed at : 2021-01-07 02:48:43 +0100
