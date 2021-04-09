# Codewars - Kata Solution (Ruby)
# VASYA  CLERK (6 kyu)

# Instructions
# The new "Avengers" movie has just been released! There are a lot of people at the cinema box office standing in a huge line. Each of them has a single 100, 50 or 25 dollar bill. An "Avengers" ticket costs 25 dollars.
# Vasya is currently working as a clerk. He wants to sell a ticket to every single person in this line.
# Can Vasya sell a ticket to every person and give change if he initially has no money and sells the tickets strictly in the order people queue?
# Return YES, if Vasya can sell a ticket to every person and give change with the bills he has at hand at that moment. Otherwise return NO.
# Examples:
# tickets([25, 25, 50]) # => YES 
# tickets([25, 100]) # => NO. Vasya will not have enough money to give change to 100 dollars
# tickets([25, 25, 50, 50, 100]) # => NO. Vasya will not have the right bills to give 75 dollars of change (you can't make two bills of 25 from one of 50)

# Solution
def tickets(people)
  bills = {25 => 0, 50 => 0, 100 => 0 }
  people.each do |dude|
    if dude == 25
      bills[25] += 1
    elsif dude == 50
      return "NO" unless bills[25] > 0
      bills[25] -= 1
      bills[50] += 1
    elsif dude == 100
      return "NO" unless (bills[50] > 0 && bills[25] > 0) || bills[25] > 2
      if bills[50] == 0
        bills[25] -= 3
        bills[100] += 1
      else
        bills[25] -= 1
        bills[50] -= 1
        bills[100] += 1
      end
    end
  end
  "YES"
end
def tickets(people)
  bills = {25 => 0, 50 => 0}
  people.each do |dude|
    if dude == 25
      bills[25] += 1
    elsif dude == 50
      return "NO" unless bills[25] > 0
      bills[25] -= 1
      bills[50] += 1
    elsif dude == 100
      return "NO" unless (bills[50] > 0 && bills[25] > 0) || bills[25] > 2
      if bills[50] == 0
        bills[25] -= 3
      else
        bills[25] -= 1
        bills[50] -= 1
      end
    end
  end
  "YES"
end


# Completed at : 2021-04-10 00:43:51 +0200
