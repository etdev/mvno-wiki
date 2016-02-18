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

ActiveRecord::Schema.define(version: 20160218164832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carriers", force: :cascade do |t|
    t.string   "names",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mvnos", force: :cascade do |t|
    t.string   "name"
    t.string   "home_page"
    t.integer  "carrier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mvnos", ["name"], name: "index_mvnos_on_name", unique: true, using: :btree

  create_table "plans", force: :cascade do |t|
    t.string   "name",                            null: false
    t.integer  "monthly_cost",                    null: false
    t.integer  "data_size",                       null: false
    t.integer  "data_speed"
    t.integer  "contract_length"
    t.integer  "initial_cost"
    t.integer  "sim_count",       default: 1
    t.boolean  "sound_included",  default: false
    t.integer  "mvno_id"
    t.integer  "carrier_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "plans", ["contract_length"], name: "index_plans_on_contract_length", using: :btree
  add_index "plans", ["data_size"], name: "index_plans_on_data_size", using: :btree
  add_index "plans", ["name"], name: "index_plans_on_name", unique: true, using: :btree
  add_index "plans", ["sound_included"], name: "index_plans_on_sound_included", using: :btree

  add_foreign_key "mvnos", "carriers"
  add_foreign_key "plans", "carriers"
  add_foreign_key "plans", "mvnos"
end
