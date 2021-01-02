# Codewars - Kata Solution (Ruby)
# HOLIDAY I  TEMPERATURE IN BALI (B kyu)

# Instructions
# So it turns out the weather in Indonesia is beautiful... but also far too hot most of the time.
# Given two variables: heat (0 - 50 degrees centigrade) and humidity (scored from 0.0 - 1.0), your job is to test whether the weather is bareable (according to my personal preferences :D)
# Rules for my personal preferences
# i. if humidity > 0.5 or the heat >= 36, it's unbearable return false
# ii. if 25 < heat < 36 and the humidity > 0.4, also unbearable return false
# iii. otherwise, it's sunbathing time :), return true
# Examples
# > heat = 36, humdity = 0.3 -> return false
# > heat = 36, humdity = 0.5 -> return false
# > heat = 10, humdity = 0.51 -> return false
# -> triggered rule 1

# > heat = 27, humdity = 0.5 -> return false
# -> triggered rule 2

# > heat = 27, humdity = 0.4 -> return true
# > heat = 25, humdity = 0.5 -> return true
# > heat = 33, humdity = 0.38 -> return true
# -> triggered rule 3
# Goodluck!
# Thanks to @Blind4Basics for raising a core issue earlier.

# Solution
def bareable(a, b)
  (a >= 36 || b > 0.5) ? false : (a > 25 && b > 0.4) ? false : true
end


# Completed at : 2021-01-02 22:20:52 +0100
