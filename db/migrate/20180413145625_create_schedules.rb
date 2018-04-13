class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :event
      t.datetime :date
      t.string :details

      t.timestamps
    end
  end
end
