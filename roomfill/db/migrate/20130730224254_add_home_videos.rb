class AddHomeVideos < ActiveRecord::Migration
  def change
    add_column :videos, :home_id, :string
  end
end
