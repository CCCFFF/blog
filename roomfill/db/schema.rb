# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130730224254) do

  create_table "homes", force: true do |t|
    t.string "name"
    t.string "room_a"
    t.string "room_b"
    t.string "room_c"
    t.string "room_d"
    t.string "room_e"
    t.string "room_f"
    t.string "room_g"
    t.string "room_h"
    t.string "room_i"
    t.string "room_j"
    t.string "room_k"
    t.string "room_l"
  end

  create_table "pictures", force: true do |t|
    t.string   "source"
    t.string   "title"
    t.string   "caption"
    t.string   "room"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "home_id"
  end

  create_table "videos", force: true do |t|
    t.string   "source"
    t.string   "title"
    t.string   "caption"
    t.string   "room"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "home_id"
  end

end
