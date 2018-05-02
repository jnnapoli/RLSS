class RemoveVodIdAndStreamStart < ActiveRecord::Migration[5.0]
  def change
     remove_column :matches, :vod_id
     remove_column :matches, :stream_start
  end
end
