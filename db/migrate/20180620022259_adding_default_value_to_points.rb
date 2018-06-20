class AddingDefaultValueToPoints < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:leaderboards, :sun_points, 0)
    change_column_default(:leaderboards, :wed_points, 0)
    change_column_default(:leaderboards, :fri_points, 0)

  end
end
