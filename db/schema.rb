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

ActiveRecord::Schema.define(version: 2019_03_06_172921) do

  create_table "family_goals", force: :cascade do |t|
    t.string "familia"
    t.string "cargo"
    t.string "mundo"
    t.string "area"
  end

  create_table "users", force: :cascade do |t|
    t.string "nombre"
    t.string "cargo"
    t.string "mundo"
    t.string "area"
    t.integer "family_goal_id"
    t.index ["family_goal_id"], name: "index_users_on_family_goal_id"
  end

end
