# Codewars - Kata Solution (Ruby)
# UEFA EURO 2016 (8 kyu)

# Instructions
# Finish the uefaEuro2016() function so it return string just like in the examples below:
# uefa_euro_2016(['Germany', 'Ukraine'],[2, 0]) # "At match Germany - Ukraine, Germany won!"
# uefa_euro_2016(['Belgium', 'Italy'],[0, 2]) # "At match Belgium - Italy, Italy won!"
# uefa_euro_2016(['Portugal', 'Iceland'],[1, 1]) # "At match Portugal - Iceland, teams played draw."

# Solution
def uefa_euro_2016(a, b)
  "At match #{a.join(' - ')}, #{b[0] == b[1] ? "teams played draw." : "#{b[0] > b[1] ? a[0] : a[1]} won!"}"
end


# Completed at : 2020-11-21T16:16:16.858Z
