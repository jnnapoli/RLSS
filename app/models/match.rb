class Match < ApplicationRecord
    validates :team1, :team2, :presence => true

    before_save :upcase_fields


    def upcase_fields
        self.team1.upcase!
        self.team2.upcase!
    end
end
