class AddVoDurlToMatchModel < ActiveRecord::Migration[5.0]
  def change
    add_column :matches, :vod_url, :string
  end
end
