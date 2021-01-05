# Codewars - Kata Solution (Ruby)
# IS THERE A VOWEL IN THERE (8 kyu)

# Instructions
# Given an array of numbers, check if any of the numbers are the character codes for lower case vowels (a, e, i, o, u).
# If they are, change the array value to a string of that vowel.
# Return the resulting array.

# Solution
def test_vow(e)
  if [97, 101, 105, 111, 117].include?(e)
    case e
      when 97 then 'a'
      when 101 then 'e'
      when 105 then 'i'
      when 111 then 'o'
      when 117 then 'u'
    end
  else
    e
  end
end
        
def is_vow(a)
  a.map { |e| test_vow(e) }
end


# Completed at : 2020-11-02T05:31:04.154Z
