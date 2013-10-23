class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :source
      t.string :caption
    end
  end
end
