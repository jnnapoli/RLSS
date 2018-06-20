class Leaderboard < ApplicationRecord
  validates :team, presence: true, uniqueness: {message: "already taken."}

  before_validation :upcase_fields


  def upcase_fields
    self.team.upcase!
  end

end
