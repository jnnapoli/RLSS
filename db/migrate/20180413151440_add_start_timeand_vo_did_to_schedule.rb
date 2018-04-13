class AddStartTimeandVoDidToSchedule < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :vod_id, :string
    add_column :schedules, :start_time, :datetime
  end
end
