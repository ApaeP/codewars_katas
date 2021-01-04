# Codewars - Kata Solution (Ruby)
# WHO LIKES IT (6 kyu)

# Instructions
# You probably know the "like" system from Facebook and other pages. People can "like" blog posts, pictures or other items. We want to create the text that should be displayed next to such an item.
# Implement a function likes :: [String] -> String, which must take in input array, containing the names of people who like an item. It must return the display text as shown in the examples:
# likes [] -- must be "no one likes this"
# likes ["Peter"] -- must be "Peter likes this"
# likes ["Jacob", "Alex"] -- must be "Jacob and Alex like this"
# likes ["Max", "John", "Mark"] -- must be "Max, John and Mark like this"
# likes ["Alex", "Jacob", "Mark", "Max"] -- must be "Alex, Jacob and 2 others like this"
# For 4 or more names, the number in and 2 others simply increases.

# Solution
def likes(names)
  case names.size
    when 0; 'no one likes this'
    when 1; "#{names.first} likes this"
    when 2; "#{names.join(' and ')} like this"
    when 3; "#{names[0..1].join(', ')} and #{names.last} like this"
    else "#{names[0..1].join(', ')} and #{names.size - 2} others like this"
  end
end


# Completed at : 2021-01-05 00:41:26 +0100
