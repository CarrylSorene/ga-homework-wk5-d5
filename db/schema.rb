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

ActiveRecord::Schema.define(version: 20150913120156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "subscribers", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.float    "length"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "youtuber_id"
    t.integer  "subscriber_id"
  end

  add_index "videos", ["subscriber_id"], name: "index_videos_on_subscriber_id", using: :btree
  add_index "videos", ["youtuber_id"], name: "index_videos_on_youtuber_id", using: :btree

  create_table "youtubers", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "videos", "subscribers"
  add_foreign_key "videos", "youtubers"
end
