# Codewars - Kata Solution (Ruby)
# 1618214 (7 kyu)

# Instructions
# For this Kata you will have to forget how to add two numbers together.
# The best explanation on what to do for this kata is this meme:
# In simple terms, our method does not like the principle of carrying over numbers and just writes down every number it calculates :-)
# You may assume both integers are positive integers

# Solution
def silly_add(a, b)
 (x = [a.digits, b.digits].sort_by(&:size))[1].zip(x[0]).reverse.map { |e| e.sum rescue e[0] }.join('').to_i
end


# Completed at : 2021-01-10 01:49:38 +0100
