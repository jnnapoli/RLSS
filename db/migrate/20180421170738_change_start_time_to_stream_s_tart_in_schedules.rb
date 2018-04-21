class ChangeStartTimeToStreamSTartInSchedules < ActiveRecord::Migration[5.0]
  def change
    rename_column :schedules, :start_time, :stream_start
  end
end