# Codewars - Kata Solution (Ruby)
# REMOVE THE TIME (8 kyu)

# Instructions
# You're re-designing a blog and the blog's posts have the following format for showing the date and time a post was made:
# Weekday Month Day, time e.g., Friday May 2, 7pm
# You're running out of screen real estate, and on some pages you want to display a shorter format, Weekday Month Day that omits the time.
# Write a function, shortenToDate, that takes the Website date/time in its original string format, and returns the shortened format.
# Assume shortenToDate's input will always be a string, e.g. "Friday May 2, 7pm". Assume shortenToDate's output will be the shortened string, e.g., "Friday May 2".

# Solution
def shorten_to_date(x)
  x.split[0..2].join(' ').tr(',', '')
end


# Completed at : 2020-11-21T17:04:12.415Z
