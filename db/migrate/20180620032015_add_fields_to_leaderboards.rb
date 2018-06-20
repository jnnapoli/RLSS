class AddFieldsToLeaderboards < ActiveRecord::Migration[5.0]
  def change
    add_column(:leaderboards, :tourney_wins, :integer)
    add_column(:leaderboards, :tourney_2nds, :integer)
    add_column(:leaderboards, :tourney_semis, :integer)
  end
end
