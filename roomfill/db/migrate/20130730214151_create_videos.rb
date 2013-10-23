class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :source
      t.string :title
      t.string :caption
      t.string :room
      t.timestamps
    end
  end
end
