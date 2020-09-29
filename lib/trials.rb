require 'pry'
require 'tty-prompt'
require 'ruby2d'
#require_relative '../config/environment'


set background: 'white'
set width: 1200
set height: 800

class Trials 

    def initialize 
        @x = rand(Window.width)
        @y = rand(Window.height)
        @x_velocity = (-5..5).to_a.sample
        @y_velocity = (-5..5).to_a.sample
        @color = Color.new('orange')
    end 

    def draw 
        Circle.new(x: 100, y: 75,radius: 50,sectors: 32, color: @color )
    end 
end 

$circles = Array.new(30){Trials.new}

update do 
    clear 
    $circles.each do |trials|
        trials.draw 
    end 
end 
show 