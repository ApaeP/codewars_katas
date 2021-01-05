# Codewars - Kata Solution (Ruby)
# STRONG PASSWORD (7 kyu)

# Instructions
# Your users' passwords were all stolen in the Yahoo! hack, and it turns out they have been lax in creating secure passwords. Create a function that checks their new password (passed as a string) to make sure it meets the following requirements:
# Between 8 - 20 characters
# Contains only the following characters (and at least one character from each category):
# uppercase letters,
# lowercase letters,
# digits,
# special characters from !@#$%^&*?
# Return "valid" if passed or "not valid" otherwise.

# Solution
def check_password(s)
  h = {}
  return 'not valid' if s.length < 8 || s.length > 20
  s.each_char do |e|
    if e.match(/[a-z]/)
      h['abc'] ? h['abc'] += 1 : h['abc'] = 1
    elsif e.match(/[A-Z]/)
      h['ABC'] ? h['ABC'] += 1 : h['ABC'] = 1
    elsif e.match(/\d/)
      h['123'] ? h['123'] += 1 : h['123'] = 1
    elsif e.match(/[!@#$%^&*?]/)
      h['chrs'] ? h['chrs'] += 1 : h['chrs'] = 1
    else
      return 'not valid'
    end
  end
  h.keys.size == 4 ? 'valid' : 'not valid'
end


# Completed at : 2020-12-09T03:45:01.445Z
