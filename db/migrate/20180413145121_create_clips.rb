class CreateClips < ActiveRecord::Migration[5.0]
  def change
    create_table :clips do |t|
      t.string :title
      t.string :player

      t.timestamps
    end
  end
end
