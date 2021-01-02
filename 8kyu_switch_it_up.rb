# Codewars - Kata Solution (Ruby)
# SWITCH IT UP (8 kyu)

# Instructions
# When provided with a number between 0-9, return it in words.
# Input :: 1
# Output :: "One".
# If your language supports it, try using a switch statement.

# Solution
def switch_it_up(number)
  {9 => "Nine",8 => "Eight",7 => "Seven",6 => "Six",5 => "Five",4 => "Four",3 => "Three",2 => "Two",1 => "One", 0 => 'Zero'}[number]
end
def switch_it_up(number)
  %w(Zero One Two Three Four Five Six Seven Eight Nine)[number]
end


# Completed at : 2020-11-03T03:49:04.686Z
