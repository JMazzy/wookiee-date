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

ActiveRecord::Schema.define(version: 20160127180042) do

  create_table "sw_characters", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "species"
    t.string   "species_class"
    t.string   "skin"
    t.string   "hair"
    t.string   "eyes"
    t.string   "vehicle"
    t.string   "starship"
    t.string   "language"
    t.integer  "height"
    t.integer  "mass"
    t.integer  "lifespan"
    t.integer  "age"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "gender"
    t.string   "seeking_gender"
    t.string   "species"
    t.string   "species_class"
    t.string   "skin"
    t.string   "hair"
    t.string   "eyes"
    t.string   "vehicle"
    t.string   "starship"
    t.string   "language"
    t.integer  "height"
    t.integer  "mass"
    t.integer  "lifespan"
    t.integer  "seeking_age"
    t.string   "match"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
