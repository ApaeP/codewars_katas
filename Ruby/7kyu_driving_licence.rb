# Codewars - Kata Solution (Ruby)
# DRIVING LICENCE (7 kyu)

# Instructions
# Introduction
# In the United Kingdom, the driving licence is the official document which authorises its holder to operate various types of motor vehicle on highways and some other roads to which the public have access. In England, Scotland and Wales they are administered by the Driver and Vehicle Licensing Agency (DVLA) and in Northern Ireland by the Driver & Vehicle Agency (DVA). A driving licence is required in the UK by any person driving a vehicle on any highway or other road defined in s.192 Road Traffic Act 1988[1] irrespective of ownership of the land over which the road passes, thus including many which allow the public to pass over private land; similar requirements apply in Northern Ireland under the Road Traffic (Northern Ireland) Order 1981. (Source Wikipedia)
# Task
# The UK driving number is made up from the personal details of the driver. The individual letters and digits can be code using the below information
# Rules
# 1–5: The first five characters of the surname (padded with 9s if less than 5 characters)

# 6: The decade digit from the year of birth (e.g. for 1987 it would be 8)

# 7–8: The month of birth (7th character incremented by 5 if driver is female i.e. 51–62 instead of 01–12)

# 9–10: The date within the month of birth

# 11: The year digit from the year of birth (e.g. for 1987 it would be 7)

# 12–13: The first two initials of the first name and middle name, padded with a 9 if no middle name

# 14: Arbitrary digit – usually 9, but decremented to differentiate drivers with the first 13 characters in common. We will always use 9

# 15–16: Two computer check digits. We will always use "AA"
# Your task is to code a UK driving license number using an Array of data. The Array will look like
# data = ["John","James","Smith","01-Jan-2000","M"]
# Where the elements are as follows
# 0 = Forename
# 1 = Middle Name (if any)
# 2 = Surname
# 3 = Date of Birth (In the format Day Month Year, this could include the full Month name or just shorthand ie September or Sep)
# 4 = M-Male or F-Female
# You will need to output the full 16 digit driving license number.
# Good luck and enjoy!
# Kata Series
# If you enjoyed this, then please try one of my other Katas. Any feedback, translations and grading of beta Katas are greatly appreciated. Thank you.
#  Maze Runner
#  Scooby Doo Puzzle
#  Driving License
#  Connect 4
#  Vending Machine
#  Snakes and Ladders
#  Mastermind
#  Guess Who?
#  Am I safe to drive?
#  Mexican Wave
#  Pigs in a Pen
#  Hungry Hippos
#  Plenty of Fish in the Pond
#  Fruit Machine
#  Car Park Escape

# Solution
def driver(data)
  months = { 'jan' => ['0', '1'], 'feb' => ['0', '2'], 'mar' => ['0', '3'], 'apr' => ['0', '4'], 'may' => ['0', '5'], 'jun' => ['0', '6'], 'jul' => ['0', '7'], 'aug' => ['0', '8'], 'sep' => ['0', '9'], 'oct' => ['1', '0'], 'nov' => ['1', '1'], 'dec' => ['1', '2'] }
  fn, mn, ln, dob, sex = data
  "#{(ln + "99999").upcase[0..4]}#{dob[-2]}#{sex == 'F' ? months[dob[3..5].downcase].join.to_i + 50 : months[dob[3..5].downcase].join}#{dob[0..1]}#{dob[-1]}#{fn[0].upcase + (mn == "" ? "9" : mn[0])}9AA"
end


# Completed at : 2020-12-30T23:36:31.498Z
