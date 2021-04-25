# Codewars - Kata Solution (Ruby)
# CATALOG (6 kyu)

# Instructions
# You are given a small extract of a catalog:
# s = "<prod><name>drill</name><prx>99</prx><qty>5</qty></prod>

# <prod><name>hammer</name><prx>10</prx><qty>50</qty></prod>

# <prod><name>screwdriver</name><prx>5</prx><qty>51</qty></prod>

# <prod><name>table saw</name><prx>1099.99</prx><qty>5</qty></prod>

# <prod><name>saw</name><prx>9</prx><qty>10</qty></prod>

# ...
# (prx stands for price, qty for quantity) and an article i.e "saw".
# The function catalog(s, "saw") returns the line(s) corresponding to the article with $ before the prices:
# "table saw > prx: $1099.99 qty: 5\nsaw > prx: $9 qty: 10\n..."
# If the article is not in the catalog return "Nothing".
# Notes
# There is a blank line between two lines of the catalog.
# The same article may appear more than once. If that happens return all the lines concerned by the article (in the same order as in the catalog).
# The line separator of results may depend on the language \nor \r\n.
# In Pascal \n is replaced by LineEnding.
# You can see examples in the "Sample tests".

# Solution
def catalog(s, f)
  return "Nothing" unless s.match?(/#{f}/)
  
  s.split(/\s{2}/).map do |e| 
    e = e.match(/<.?name.?>(?<name>.*#{f}.*)<.?name.?><.?prx.?>(?<prx>.*)<.?prx.?><.?qty.?>(?<qty>.*)<.?qty.?>/)
    "#{e[:name]} > prx: $#{e[:prx]} qty: #{e[:qty]}" rescue nil
  end.compact.join("\n")
end


# Completed at : 2021-04-26 00:18:03 +0200
