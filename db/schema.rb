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

ActiveRecord::Schema.define(version: 20131021154943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "songs", force: true do |t|
    t.string   "name",                       null: false
    t.string   "spotify_uri",                null: false
    t.integer  "artist_id",                  null: false
    t.decimal  "price",       default: 0.99, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id", using: :btree

  create_table "songs_users", force: true do |t|
    t.integer "user_id", null: false
    t.integer "song_id", null: false
  end

  create_table "users", force: true do |t|
    t.string   "email",                         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest",               null: false
    t.decimal  "balance",         default: 0.0, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
