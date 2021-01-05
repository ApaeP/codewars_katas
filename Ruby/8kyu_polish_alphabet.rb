# Codewars - Kata Solution (Ruby)
# POLISH ALPHABET (8 kyu)

# Instructions
# There are 32 letters in the Polish alphabet: 9 vowels and 23 consonants.
# Your task is to change the letters with diacritics:
# ą -> a,
# ć -> c,
# ę -> e,
# ł -> l,
# ń -> n,
# ó -> o,
# ś -> s,
# ź -> z,
# ż -> z
# and print out the string without the use of the Polish letters.
# For example:
# "Jędrzej Błądziński"  -->  "Jedrzej Bladzinski"

# Solution
def correct_polish_letters(s)
  s.tr('ąćęłńóśźż', 'acelnoszz')
end


# Completed at : 2020-10-29T23:42:54.911Z
