# Codewars - Kata Solution (Ruby)
# IS THE STRING UPPERCASE (8 kyu)

# Instructions
# Is the string uppercase?
# Task
# Create a method is_upcase? to see whether the string is ALL CAPS. For example:
# "c".is_upcase? == false
# "C".is_upcase? == true
# "hello I AM DONALD".is_upcase? == false
# "HELLO I AM DONALD".is_upcase? == true
# "ACSKLDFJSgSKLDFJSKLDFJ".is_upcase? == false
# "ACSKLDFJSGSKLDFJSKLDFJ".is_upcase? == true
# In this Kata, a string is said to be in ALL CAPS whenever it does not contain any lowercase letter so any string containing no letters at all is trivially considered to be in ALL CAPS.

# Solution
class String
  def is_upcase?
    self == self.upcase
  end
end


# Completed at : 2020-10-29T23:25:10.901Z
