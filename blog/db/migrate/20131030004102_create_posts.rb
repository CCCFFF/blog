class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :post_text
      t.date :post_date

      t.timestamps
    end
  end
end
