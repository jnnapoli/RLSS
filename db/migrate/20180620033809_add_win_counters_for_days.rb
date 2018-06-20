class AddWinCountersForDays < ActiveRecord::Migration[5.0]
  def change
    add_column(:leaderboards, :sunday_wins, :integer, :default => 0)
    add_column(:leaderboards, :sunday_2nds, :integer, :default => 0)
    add_column(:leaderboards, :sunday_semis, :integer, :default => 0)
    add_column(:leaderboards, :wednesday_wins, :integer, :default => 0)
    add_column(:leaderboards, :wednesday_2nds, :integer, :default => 0)
    add_column(:leaderboards, :wednesday_semis, :integer, :default => 0)
    add_column(:leaderboards, :friday_wins, :integer, :default => 0)
    add_column(:leaderboards, :friday_2nds, :integer, :default => 0)
    add_column(:leaderboards, :friday_semis, :integer, :default => 0)
  end
end
