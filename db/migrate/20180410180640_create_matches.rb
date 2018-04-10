class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :title
      t.string :team1
      t.string :team2
      t.string :vodID
      t.datetime :stream_start
      t.datetime :match_start
      t.datetime :vod_start
      t.string :clip

      t.timestamps
    end
  end
end
