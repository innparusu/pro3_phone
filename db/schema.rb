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

ActiveRecord::Schema.define(version: 20140527173207) do

  create_table "entries", force: true do |t|
    t.integer  "user_id"
    t.integer  "lecture_id"
    t.integer  "late_count"
    t.integer  "absence_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lates", force: true do |t|
    t.integer  "lecture_id"
    t.integer  "user_id"
    t.boolean  "late"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lecture_count_no"
  end

  create_table "lectures", force: true do |t|
    t.string   "name"
    t.string   "teacher"
    t.integer  "room_id"
    t.integer  "period_id"
    t.string   "day"
    t.integer  "lecture_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periods", force: true do |t|
    t.integer  "period_number"
    t.time     "begin_time"
    t.time     "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "latitude",   precision: 9, scale: 6
    t.decimal  "longitude",  precision: 9, scale: 6
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "grade"
    t.string   "number"
    t.string   "mail_address"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
