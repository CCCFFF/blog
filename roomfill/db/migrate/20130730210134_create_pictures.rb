class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
       t.string :source
       t.string :title
       t.string :caption
       t.string :room
       t.timestamps

    end
  end
end
