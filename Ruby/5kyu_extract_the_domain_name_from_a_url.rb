# Codewars - Kata Solution (Ruby)
# EXTRACT THE DOMAIN NAME FROM A URL (5 kyu)

# Instructions
# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:
# domain_name("http://github.com/carbonfive/raygun") == "github" 
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"

# Solution
def domain_name(url)
  url = "http://#{url}" if URI.parse(url).scheme.nil?
  host = URI.parse(url).host.downcase
  (host.start_with?('www.') ? host[4..-1] : host).split('.').first
end


# Completed at : 2021-04-27 00:49:09 +0200
