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


Opponent.create({name:"Lebron James",team:"Lakers", Rebounds:7.8, Asts:10.2, 3pts:34.8  })
Opponent.create({name:"Anthony Davis",team:"Lakers", Rebounds:10.4, Asts:2.2, 3pts:31.9  })
Opponent.create({name:"Alex Caruso",team:"Lakers", Rebounds:2.0, Asts:2.2, 3pts:36.2  })
Opponent.create({name:"Rajon Rondo",team:"Lakers", Rebounds:5.5, Asts:1.9, 3pts:33.1  })
Opponent.create({name:"Kyle Kuzma",team:"Lakers", Rebounds:4.7, Asts:8.3, 3pts:31.6  })
Opponent.create({name:"Jamal Murray",team:"Nuggets", Rebounds:3.6, Asts:3.7, 3pts:35.8  })
Opponent.create({name:"Nikola Jokic",team:"Nuggets", Rebounds:9.6, Asts:5.5, 3pts:33.8  })
Opponent.create({name:"Michael Porter",team:"Nuggets", Rebounds:4.7, Asts: 0.08, 3pts:42.2  })
Opponent.create({name:"Kawhi Leonard ",team:"Clippers", Rebounds:6.4, Asts:2.7, 3pts:38.3  })
Opponent.create({name:"Paul George",team:"Clippers", Rebounds:6.4, Asts:3.4, 3pts:38.1  })
Opponent.create({name:"Russell Westbrook",team:"Rockets", Rebounds:7.1, Asts:8.3, 3pts:30.5  })
Opponent.create({name:"James Harden",team:"Rockets", Rebounds:5.3, Asts:6.3, 3pts:36.3  })
Opponent.create({name:"Luka Doncic",team:"Mavs", Rebounds:8.5, Asts:7.3, 3pts: 32.1  })
Opponent.create({name:"Kristaps Porzingis",team:"Mavs", Rebounds:7.6, Asts:1.4, 3pts: 35.8 })
Opponent.create({name:"Stephen Curry",team:"Warriors", Rebounds:4.5, Asts:6.6, 3pts:47.6  })
Opponent.create({name:"Klay Thompson",team:"Warriors", Rebounds:3.5, Asts:2.3, 3pts:41.9  })
Opponent.create({name:"Tyler Hero",team:"Heat", Rebounds:4.1, Asts:2.2, 3pts: 38.9 })
Opponent.create({name:"Jimmu Buttler",team:"Heat", Rebounds:5.1, Asts:3.7, 3pts: 33.3  })
Opponent.create({name:"Kyrie Irving",team:"Nets", Rebounds:3.7, Asts:5.7, 3pts: 39.0 })
Opponent.create({name:"Kevin Durant ",team:"Nets", Rebounds:7.1, Asts:4.1, 3pts: 38.1 })



binding.pry 
## Hey mike 
 