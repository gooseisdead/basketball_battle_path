require "rest-client"#actually lets us hit end points
require "json"#pasre response body into form we can use 
require "pry"
require_relative '../config/environment'


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

##api_response4 = RestClient.get("https://www.balldontlie.io/api/v1/stats")

##api_data4 = JSON.parse(api_response4)
#api_data4.each {|stats| stats.create(stats)}


Opponent.create({name:"Lebron James",team:"Lakers", rebounds:7.8, asts:10.2, three_pts:34.8  })
Opponent.create({name:"Anthony Davis",team:"Lakers", rebounds:10.4, asts:2.2, three_pts:31.9  })
Opponent.create({name:"Alex Caruso",team:"Lakers", rebounds:2.0, asts:2.2, three_pts:36.2  })
Opponent.create({name:"Rajon Rondo",team:"Lakers", rebounds:5.5, asts:1.9, three_pts:33.1  })
Opponent.create({name:"Kyle Kuzma",team:"Lakers", rebounds:4.7, asts:8.3, three_pts:31.6  })
Opponent.create({name:"Jamal Murray",team:"Nuggets", rebounds:3.6, asts:3.7, three_pts:35.8  })
Opponent.create({name:"Nikola Jokic",team:"Nuggets", rebounds:9.6, asts:5.5, three_pts:33.8  })
Opponent.create({name:"Michael Porter",team:"Nuggets", rebounds:4.7, asts: 0.08, three_pts:42.2  })
Opponent.create({name:"Kawhi Leonard ",team:"Clippers", rebounds:6.4, asts:2.7, three_pts:38.3  })
Opponent.create({name:"Paul George",team:"Clippers", rebounds:6.4, asts:3.4, three_pts:38.1  })
Opponent.create({name:"Russell Westbrook",team:"Rockets", rebounds:7.1, asts:8.3, three_pts:30.5  })
Opponent.create({name:"James Harden",team:"Rockets", rebounds:5.3, asts:6.3, three_pts:36.3  })
Opponent.create({name:"Luka Doncic",team:"Mavs", rebounds:8.5, asts:7.3, three_pts: 32.1  })
Opponent.create({name:"Kristaps Porzingis",team:"Mavs", rebounds:7.6, asts:1.4, three_pts: 35.8 })
Opponent.create({name:"Stephen Curry",team:"Warriors", rebounds:4.5, asts:6.6, three_pts:47.6  })
Opponent.create({name:"Klay Thompson",team:"Warriors", rebounds:3.5, asts:2.3, three_pts:41.9  })
Opponent.create({name:"Tyler Hero",team:"Heat", rebounds:4.1, asts:2.2, three_pts: 38.9 })
Opponent.create({name:"Jimmu Buttler",team:"Heat", rebounds:5.1, asts:3.7, three_pts: 33.3  })
Opponent.create({name:"Kyrie Irving",team:"Nets", rebounds:3.7, asts:5.7, three_pts: 39.0 })
Opponent.create({name:"Kevin Durant ",team:"Nets", rebounds:7.1, asts:4.1, three_pts: 38.1 })



binding.pry 
## Hey mike 
 