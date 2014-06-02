# Sign up for a free account at https://www.mashape.com/. There you’ll find a huge library of available APIs. Find an interesting API that has free demo access. Then write a Ruby web client that uses that API to do something interesting.
 
# You may use an API that's not on Mashape.
# You may use a gem that wraps an API, but try to do something interesting if the gem is doing all the work for you.
# You can use http://requestb.in/ to help you debug your code if you get errors.


#For getting methods that pull data from a webpage. 
require 'unirest'

puts "What city do you want to check the weather in?"
	  city = gets.chomp

response = Unirest.get "https://george-vustrey-weather.p.mashape.com/api.php",
	headers: { 
	    "X-Mashape-Authorization" => "pHwhyFNyrYWKuPDsDnFgQ2MgzE97I1ZZ"
	  }, parameters: { "location" => city}
	  
full_body = response.body

sun = full_body[0]
mon = full_body[1]
tue = full_body[2]
wed = full_body[3]
thu = full_body[4]
fri = full_body[5]
sat = full_body[6]

puts "What day?"
day = gets.chomp


case day
when "Sunday"
puts "On #{day} the high is #{sun["high"]} and the low is #{sun["low"]}."
when "Monday"
puts "On #{day} the high is #{mon["high"]} and the low is #{mon["low"]}."
when "Tuesday"
puts "On #{day} the high is #{tue["high"]} and the low is #{tue["low"]}."
when "Wednesday"
puts "On #{day} the high is #{wed["high"]} and the low is #{wed["low"]}."
when "Thursday"
puts "On #{day} the high is #{thu["high"]} and the low is #{thu["low"]}."
when "Friday"
puts "On #{day} the high is #{fri["high"]} and the low is #{fri["low"]}."
when "Saturday"
puts "On #{day} the high is #{sat["high"]} and the low is #{sat["low"]}."
else 
	puts "Try a real day."
end





