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

ActiveRecord::Schema.define(version: 20160907175707) do

  create_table "album_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string   "name"
    t.integer  "album_group_id"
    t.integer  "label_id"
    t.integer  "genre_id"
    t.integer  "disctotal"
    t.string   "albumstatus"
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.integer  "original_day"
    t.integer  "original_month"
    t.integer  "original_year"
    t.integer  "comp"
    t.string   "mb_albumid"
    t.string   "mb_releasegroupid"
    t.string   "language"
    t.string   "catalognum"
    t.float    "added"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "artist_secondary_genres", force: :cascade do |t|
    t.integer  "artist_id"
    t.integer  "secondary_genre_id"
    t.integer  "position"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.string   "country"
    t.string   "mb_albumartistid"
    t.text     "albumartist_credit"
    t.string   "albumartist_sort"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.integer  "parent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "secondary_genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "name"
    t.integer  "albm_id"
    t.integer  "month"
    t.integer  "channels"
    t.integer  "disc"
    t.string   "mb_trackid"
    t.string   "composer"
    t.integer  "bitdepth"
    t.string   "acoustid_fingerprint"
    t.string   "mb_releasegroupid"
    t.string   "acoustid_id"
    t.string   "format"
    t.string   "encoder"
    t.integer  "day"
    t.integer  "original_year"
    t.string   "artist"
    t.integer  "bpm"
    t.string   "grouping"
    t.float    "mtime"
    t.integer  "original_day"
    t.integer  "year"
    t.integer  "samplerate"
    t.string   "media"
    t.string   "comments"
    t.float    "added"
    t.integer  "original_month"
    t.string   "asin"
    t.integer  "track"
    t.string   "genre"
    t.binary   "path"
    t.integer  "bitrate"
    t.string   "language"
    t.string   "country"
    t.float    "length"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
