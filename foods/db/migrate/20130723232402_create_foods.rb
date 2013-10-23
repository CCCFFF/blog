class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :source
      t.string :caption
    end
  end
end
