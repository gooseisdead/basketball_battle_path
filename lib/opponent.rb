class Opponent < ActiveRecord::Base

    has_many :possessions
    has_many :players, through: :possessions



end