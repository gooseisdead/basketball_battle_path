class Player < ActiveRecord::Base

    has_many :possessions
    has_many :opponents, through: :possessions
        


end

