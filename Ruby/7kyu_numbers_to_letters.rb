# Codewars - Kata Solution (Ruby)
# NUMBERS TO LETTERS (7 kyu)

# Instructions
# Given an array of numbers (in string format), you must return a string. The numbers correspond to the letters of the alphabet in reverse order: a=26, z=1 etc. You should also account for '!', '?' and ' ' that are represented by '27', '28' and '29' respectively.
# All inputs will be valid.

# Solution
REV = ('1'..'26').to_a.zip(('a'..'z').to_a.reverse).to_h.merge({'27' => '!', '28' => '?', '29' => ' '})

def switcher(arr)
  arr.map { |e| REV[e] }.join
end


# Completed at : 2021-03-13 19:27:54 +0100
