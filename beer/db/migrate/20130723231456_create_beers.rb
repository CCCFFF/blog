class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :source
      t.string :caption
    end
  end
end
