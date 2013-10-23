class AddHomePictures < ActiveRecord::Migration
  def change
    add_column :pictures, :home_id, :string
  end
end
