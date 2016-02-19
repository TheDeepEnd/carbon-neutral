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

ActiveRecord::Schema.define(version: 20160218035629) do

  create_table "expenses", force: :cascade do |t|
    t.integer  "profile_id",       limit: 4
    t.decimal  "clothing",                   precision: 10
    t.decimal  "healthcare",                 precision: 10
    t.decimal  "vehicle",                    precision: 10
    t.decimal  "home_maintenance",           precision: 10
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "expenses", ["profile_id"], name: "index_expenses_on_profile_id", using: :btree

  create_table "foods", force: :cascade do |t|
    t.integer  "profile_id",   limit: 4
    t.decimal  "red_meat",               precision: 10
    t.decimal  "poultry",                precision: 10
    t.decimal  "seafood",                precision: 10
    t.decimal  "vegetables",             precision: 10
    t.decimal  "milk",                   precision: 10
    t.decimal  "other_drinks",           precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "foods", ["profile_id"], name: "index_foods_on_profile_id", using: :btree

  create_table "houses", force: :cascade do |t|
    t.integer  "profile_id",  limit: 4
    t.decimal  "electricity",           precision: 10
    t.decimal  "fuel",                  precision: 10
    t.decimal  "gas",                   precision: 10
    t.decimal  "water",                 precision: 10
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "houses", ["profile_id"], name: "index_houses_on_profile_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "firstname",  limit: 255
    t.string   "lastname",   limit: 255
    t.integer  "age",        limit: 4
    t.string   "country",    limit: 255
    t.string   "state",      limit: 255
    t.string   "city",       limit: 255
    t.integer  "zipcode",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "expenses", "profiles"
  add_foreign_key "foods", "profiles"
  add_foreign_key "houses", "profiles"
end
