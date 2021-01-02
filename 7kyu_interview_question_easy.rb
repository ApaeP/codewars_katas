# Codewars - Kata Solution (Ruby)
# INTERVIEW QUESTION EASY (7 kyu)

# Instructions
# You receive the name of a city as a string, and you need to return a string that shows how many times each letter shows up in the string by using asterisks (*).
# For example:
# "Chicago"  -->  "c:**,h:*,i:*,a:*,g:*,o:*"
# As you can see, the letter c is shown only once, but with 2 asterisks.
# The return string should include only the letters (not the dashes, spaces, apostrophes, etc). There should be no spaces in the output, and the different letters are separated by a comma (,) as seen in the example above.
# Note that the return string must list the letters in order of their first appearance in the original string.
# More examples:
# "Bangkok"    -->  "b:*,a:*,n:*,g:*,k:**,o:*"
# "Las Vegas"  -->  "l:*,a:**,s:**,v:*,e:*,g:*"
# Have fun! ;)

# Solution
def get_letters(city, h = {}, s = "")
  city.gsub(/\s/, '').downcase.chars.each { |e| h[e].nil? ? h[e] = 1 : h[e] += 1 }
  h.each { |k, v| s << "#{k}:#{"*" * v}," }
  s[0..-2]
end


# Completed at : 2020-12-17T03:36:40.315Z
