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

ActiveRecord::Schema.define(version: 2018_12_13_202642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "heartrates", force: :cascade do |t|
    t.date "date"
    t.integer "restingHeartRate"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_heartrates_on_user_id"
  end

  create_table "sleepcycles", force: :cascade do |t|
    t.integer "wake"
    t.integer "light"
    t.integer "rem"
    t.integer "deep"
    t.bigint "sleeplog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sleeplog_id"], name: "index_sleepcycles_on_sleeplog_id"
  end

  create_table "sleeplogs", force: :cascade do |t|
    t.date "dateOfSleep"
    t.integer "duration"
    t.integer "efficiency"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sleeplogs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "firstName"
    t.date "dateOfBirth"
    t.integer "height"
    t.integer "weight"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "heartrates", "users"
  add_foreign_key "sleepcycles", "sleeplogs"
  add_foreign_key "sleeplogs", "users"
end
