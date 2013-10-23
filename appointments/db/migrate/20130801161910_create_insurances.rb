class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :name
      t.string :category
      t.string :copay
    end
  end
end
