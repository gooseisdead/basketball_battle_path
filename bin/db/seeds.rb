require "rest-client"#actually lets us hit end points
require "json"#pasre response body into form we can use 
require "pry"
#require_relative '../config/environment'


api_response = RestClient.get("https://www.balldontlie.io/api/v1/players/")

api_data = JSON.parse(api_response)

## Returns seaons averahe , by deafault current seaon

api_response2 = RestClient.get("https://www.balldontlie.io/api/v1/season_averages?season=2018&player_ids[]=1&player_ids[]=2")

api_data2 = JSON.parse(api_response2)

## Returns a specific team 
puts "Which team will you trust with your life "
choice = gets.chomp 
api_response3 = RestClient.get("https://www.balldontlie.io/api/v1/teams/#{choice.to_i}")
##I changed it back to id so we can have the original 
## I got the important ones or we generate at random, 7:MAV, 10:GSW, 11:HOU
## 14:LAL, 16:MIA, 17:BUCKS , 21:OKC , 20:NYK

api_data3 = JSON.parse(api_response3)
if choice == 20 
    puts "Good luck"
else
puts  "You have chosen " 
print api_data3
end 

api_response4 = RestClient.get("https://www.balldontlie.io/api/v1/stats")

api_data4 = JSON.parse(api_response4)
#api_data4.each {|stats| stats.create(stats)}






binding.pry 
## Hey mike 
 
