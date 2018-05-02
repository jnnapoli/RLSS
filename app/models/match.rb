class Match < ApplicationRecord
    validates :team1, :team2, :presence => true
end
