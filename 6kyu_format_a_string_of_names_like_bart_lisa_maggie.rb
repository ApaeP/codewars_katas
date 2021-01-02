# Codewars - Kata Solution (Ruby)
# FORMAT A STRING OF NAMES LIKE BART LISA  MAGGIE (6 kyu)

# Instructions
# Given: an array containing hashes of names
# Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.
# Example:
# list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# # returns 'Bart, Lisa & Maggie'

# list([ {name: 'Bart'}, {name: 'Lisa'} ])
# # returns 'Bart & Lisa'

# list([ {name: 'Bart'} ])
# # returns 'Bart'

# list([])
# # returns ''
# Note: all the hashes are pre-validated and will only contain A-Z, a-z, '-' and '.'.

# Solution
def list names
  "#{"#{names[0..-2].map { |e| e[:name] }.join(', ')} & " if names.size > 1}#{names.last[:name]}" rescue ""
end
