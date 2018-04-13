class ChangeVoDidtovodId < ActiveRecord::Migration[5.0]
  def change
    rename_column :matches, :vodID, :vod_id
  end
end
