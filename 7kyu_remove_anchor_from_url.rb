# Codewars - Kata Solution (Ruby)
# REMOVE ANCHOR FROM URL (7 kyu)

# Instructions
# Complete the function/method so that it returns the url with anything after the anchor (#) removed.
# Examples
# # returns 'www.codewars.com'
# remove_url_anchor('www.codewars.com#about')

# # returns 'www.codewars.com?page=1' 
# remove_url_anchor('www.codewars.com?page=1') 

# Solution
def remove_url_anchor(url)
  url.gsub(/#.*/, '')
end


# Completed at : 2020-11-23T13:25:34.262Z
