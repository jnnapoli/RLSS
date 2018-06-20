class CreateLeaderboards < ActiveRecord::Migration[5.0]
  def change
    create_table :leaderboards do |t|
      t.string :team
      t.integer :sun_points
      t.integer :wed_points
      t.integer :fri_points

      t.timestamps
    end
  end
end
