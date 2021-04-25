# Codewars - Kata Solution (Ruby)
# FILTER LONG WORDS (7 kyu)

# Instructions
# Return a list of all words that are longer than n.
# Example:

# Solution
def filter_long_words(sentence, n)
  sentence.split(' ').select { |e| e.length > n }
end


# Completed at : 2021-04-26 01:02:28 +0200
