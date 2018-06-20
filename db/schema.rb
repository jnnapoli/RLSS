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

ActiveRecord::Schema.define(version: 20180620033809) do

  create_table "brackets", force: :cascade do |t|
    t.string   "champs"
    t.string   "runnerup"
    t.string   "semi1"
    t.string   "semi2"
    t.string   "semi3"
    t.string   "semi4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clips", force: :cascade do |t|
    t.string   "title"
    t.string   "player"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leaderboards", force: :cascade do |t|
    t.string   "team"
    t.integer  "sun_points",      default: 0
    t.integer  "wed_points",      default: 0
    t.integer  "fri_points",      default: 0
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "tourney_wins",    default: 0
    t.integer  "tourney_2nds",    default: 0
    t.integer  "tourney_semis",   default: 0
    t.integer  "sunday_wins",     default: 0
    t.integer  "sunday_2nds",     default: 0
    t.integer  "sunday_semis",    default: 0
    t.integer  "wednesday_wins",  default: 0
    t.integer  "wednesday_2nds",  default: 0
    t.integer  "wednesday_semis", default: 0
    t.integer  "friday_wins",     default: 0
    t.integer  "friday_2nds",     default: 0
    t.integer  "friday_semis",    default: 0
    t.index ["team"], name: "index_leaderboards_on_team", unique: true
  end

  create_table "matches", force: :cascade do |t|
    t.string   "title"
    t.string   "team1"
    t.string   "team2"
    t.datetime "match_start"
    t.datetime "vod_start"
    t.string   "clip"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "winner"
    t.string   "vod_url"
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "event"
    t.datetime "date"
    t.string   "details"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "vod_id"
    t.datetime "stream_start"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
