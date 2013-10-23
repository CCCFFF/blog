class CreateCar < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :source
      t.string :caption
    end
  end
end
