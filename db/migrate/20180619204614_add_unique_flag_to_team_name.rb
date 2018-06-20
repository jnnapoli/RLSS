class AddUniqueFlagToTeamName < ActiveRecord::Migration[5.0]
  def change
    add_index :leaderboards, :team, unique: true
  end
end
