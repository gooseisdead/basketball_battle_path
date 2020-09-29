class Possession < ActiveRecord::Base
#class has to do with a table 
    belongs_to :player
    belongs_to :opponent

end

