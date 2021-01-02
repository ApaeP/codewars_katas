# Codewars - Kata Solution (Ruby)
# SIMPLE PIG LATIN (5 kyu)

# Instructions
# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.
# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

# Solution
def pig_it text
 answer = []
  text.split(" ").each_with_index do |word, i|
    if word.length > 1
      letter_at_end = word.split("").insert(word.length, word.split("").delete_at(0))
      letter_at_end.shift
      i == text.split(" ").length - 1 ? letter_at_end << "ay" : letter_at_end << "ay "
      final_word = letter_at_end.join
      answer.push(final_word)
    elsif word =~ /[[:alpha:]]/ && word.length == 1
      i == text.split(" ").length - 1 ? word << "ay" : word << "ay "
      answer.push(word)
    else
      answer.push(word)
    end
  end
  answer.join
end
