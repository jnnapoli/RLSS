class AddingDefaultValuesToLeaderBoards < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:leaderboards, :tourney_wins, 0)
    change_column_default(:leaderboards, :tourney_2nds, 0)
    change_column_default(:leaderboards, :tourney_semis, 0)
  end
end
