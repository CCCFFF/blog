class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :gender
      t.string :age
      t.string :health
      t.string :location
      t.string :insurance_id
    end
  end
end
