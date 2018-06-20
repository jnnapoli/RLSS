class CreateBrackets < ActiveRecord::Migration[5.0]
  def change
    create_table :brackets do |t|
      t.string :champs
      t.string :runnerup
      t.string :semi1
      t.string :semi2
      t.string :semi3
      t.string :semi4

      t.timestamps
    end
  end
end
