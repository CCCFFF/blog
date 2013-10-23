class CreateVeggies < ActiveRecord::Migration
  def change
    create_table :veggies do |t|
      t.string :source
      t.string :caption
    end
  end
end
