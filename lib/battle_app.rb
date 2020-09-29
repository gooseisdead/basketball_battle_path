require 'pry'
require 'tty-prompt'
require 'ruby2d'
require_relative '../config/environment'
#require 'embed'

#embed src="file:///Users/victor/Downloads/NBA%20on%20ESPN%20&%20ABC%20Theme%20Music.mp3" 
#autostart="true" 
#loop="true" 
#hidden="true"

class BattleApp

    attr_reader :player

    def welcome
        prompt = TTY::Prompt.new
        welcome = prompt.select("Welcome to the Battle", active_color: :cyan) do |menu|
            menu.choice 'Play Hoops'
            menu.choice 'Drink Gatorade'
            menu.choice 'How to Play'
        end
            if welcome == 'Play Hoops'
                play_hoops
            elsif welcome == 'Drink Gatorade'
                drink_gatorade
            else welcome == 'How to Play'
                how_to_play
            end
    end 

    def play_hoops
        #our method for player select.random
    end

    def drink_gatorade
        sleep(0.5)
        puts ".....chug"
        sleep(0.5)
        puts ".....chug"
        sleep(1)
        puts "Sponsored by Gatorade"
        # dunk = Sprite.new(
        #     '/Users/gooseisdead/Flatiron/code/basketball_battle_path/lib/dunk.png',
        #     clip_width: 84,
        #     time: 300,
        #     loop: true
        #     )
        #     dunk
         end

    def how_to_play
        "Select 'play hoops' from the menu and drive the lane with the biggest stars from the NBA"
    end



    binding.pry

    private

end