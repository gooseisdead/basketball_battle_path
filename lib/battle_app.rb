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
            menu.choice 'Choose a NBA Star'
            menu.choice 'Drink Gatorade'
            menu.choice 'Retire'
        end
    end 


    binding.pry

    private

end