# Codewars - Kata Solution (Ruby)
# GRACEFUL TIPPING (7 kyu)

# Instructions
# Adding tip to a restaurant bill in a graceful way can be tricky, thats why you need make a function for it.
# The function will receive the restaurant bill (always a positive number) as an argument. You need to 1) add at least 15% in tip, 2) round that number up to an elegant value and 3) return it.
# What is an elegant number? It depends on the magnitude of the number to be rounded. Numbers below 10 should simply be rounded to whole numbers. Numbers 10 and above should be rounded like this:
# 10 - 99.99... ---> Round to number divisible by 5
# 100 - 999.99... ---> Round to number divisible by 50
# 1000 - 9999.99... ---> Round to number divisible by 500
# And so on...
# Good luck!
# Examples
#  1  -->    2
#  7  -->    9
# 12  -->   15
# 86  -->  100

# Solution
def graceful_tipping(bill)
  (x = bill + (bill / 100.0 * 15)) > 9 ? (x / (y = (10 ** Math.log10(x).to_i rescue 1) / 10 * 5) ).ceil * y : x.ceil
end
def graceful_tipping(b)
  (b *= 1.15) > 9 ? ((b / (y = (10 ** Math.log10(b).to_i) / 2)).ceil rescue 10) * y : b.ceil
end


# Completed at : 2021-01-10 02:14:55 +0100
