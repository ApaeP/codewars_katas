# Codewars - Kata Solution (Ruby)
# REVERSING WORDS IN A STRING (8 kyu)

# Instructions
# You need to write a function that reverses the words in a given string. A word can also fit an empty string. If this is not clear enough, here are some examples:
# As the input may have trailing spaces, you will also need to ignore unneccesary whitespace.
# reverse('Hello World') === 'World Hello'
# reverse('Hi There.') === 'There. Hi'
# Happy coding!

# Solution
def reverse(string)
  string.split.reverse.join(' ')
end


# Completed at : 2020-11-21T15:18:18.494Z
