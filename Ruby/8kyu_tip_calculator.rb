# Codewars - Kata Solution (Ruby)
# TIP CALCULATOR (8 kyu)

# Instructions
# Complete the function, which calculates how much you need to tip based on the total amount of the bill and the service.
# You need to consider the following ratings:
# Terrible: tip 0%
# Poor: tip 5%
# Good: tip 10%
# Great: tip 15%
# Excellent: tip 20%
# The rating is case insensitive (so "great" = "GREAT"). If an unrecognised rating is received, then you need to return:
# "Rating not recognised" in Javascript, Python and Ruby...
# ...or null in Java
# ...or -1 in C#
# Because you're a nice person, you always round up the tip, regardless of the service.

# Solution
def calculate_tip(amount, rating)
  rating.downcase!
  if 'terrible' == rating then return 0
  elsif 'poor' == rating then return ((amount/100.0)*5).ceil
  elsif 'good' == rating then return ((amount/100.0)*10).ceil
  elsif 'great' == rating then return ((amount/100.0)*15).ceil
  elsif 'excellent' == rating then return ((amount/100.0)*20).ceil
  else return 'Rating not recognised'
  end
end


# Completed at : 2020-10-30T02:25:54.634Z
