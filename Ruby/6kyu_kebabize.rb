# Codewars - Kata Solution (Ruby)
# KEBABIZE (6 kyu)

# Instructions
# Modify the kebabize function so that it converts a camel case string into a kebab case.
# kebabize('camelsHaveThreeHumps') // camels-have-three-humps
# kebabize('camelsHave3Humps') // camels-have-humps
# Notes:
# the returned string should only contain lowercase letters

# Solution
def kebabize(str)
  string = str.chars.map.with_index do |l, i|
    if ('A'..'Z').to_a.include?(l)
      i == 0 ? l.downcase : "-#{l.downcase}"
    elsif ('a'..'z').to_a.include?(l)
      l
    end
  end
  .join
  string[0] == '-' ? string[1..-1] : string
end
