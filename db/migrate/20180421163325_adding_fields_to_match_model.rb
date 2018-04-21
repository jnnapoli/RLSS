class AddingFieldsToMatchModel < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :winner, :string
  end
end