require "rest-client"#actually lets us hit end points
require "json"#pasre response body into form we can use 
require "pry"
require_relative '../config/environment'


api_response = RestClient.get("https://www.balldontlie.io/api/v1/players")

api_data = JSON.parse(api_response)

## Returns seaons averahe , by deafault current seaon

api_response2 = RestClient.get("https://www.balldontlie.io/api/v1/season_averages")

api_data2 = JSON.parse(api_response2)

## Returns a specific team 
api_response3 = RestClient.get("https://www.balldontlie.io/api/v1/teams/<id>")
##I changed it back to id so we can have the original 
## I got the important ones or we generate at random, 7:MAV, 10:GSW, 11:HOU
## 14:LAL, 16:MIA, 17:BUCKS , 21:OKC , 20:NYK

api_data3 = JSON.parse(api_response3)

api_data4 = RestClient.get("https://www.balldontlie.io/api/v1/stats")

api_response4 = JSON.parse(api_data4)






binding.pry 