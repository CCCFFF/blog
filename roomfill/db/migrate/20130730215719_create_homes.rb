class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :name
      t.string :room_a
      t.string :room_b
      t.string :room_c
      t.string :room_d
      t.string :room_e
      t.string :room_f
      t.string :room_g
      t.string :room_h
      t.string :room_i
      t.string :room_j
      t.string :room_k
      t.string :room_l
    end
  end
end
