# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_24_094834) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "match_id", null: false
    t.datetime "bet_date", precision: nil, null: false
    t.string "bet_type", null: false
    t.decimal "bet_amount", precision: 10, scale: 2, null: false
    t.decimal "odds", precision: 5, scale: 2, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_bets_on_match_id"
    t.index ["user_id"], name: "index_bets_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "match_date"
    t.string "home_team"
    t.string "away_team"
    t.integer "goals_home"
    t.integer "goals_away"
    t.string "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "odds_1"
    t.decimal "odds_x"
    t.decimal "odds_2"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.decimal "wallet_funds"
    t.string "league"
    t.string "user_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "email"
  end

  add_foreign_key "bets", "matches"
  add_foreign_key "bets", "users"
end
