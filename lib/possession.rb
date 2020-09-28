class Possession < ActiveRecord::Base

    belongs_to :player
    belongs_to :opponent

end

