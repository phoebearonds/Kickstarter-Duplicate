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

ActiveRecord::Schema.define(version: 20150724175552) do

  create_table "donations", force: :cascade do |t|
    t.float   "amount"
    t.integer "donor_id"
    t.integer "project_id"
  end

  create_table "donors", force: :cascade do |t|
    t.string "username"
    t.string "full_name"
    t.string "email"
    t.string "phone_number"
    t.string "credit_card"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "project_id"
    t.integer "donor_id"
    t.string  "genre"
    t.string  "title"
    t.float   "goal"
    t.string  "image_file"
    t.string  "description"
    t.string  "location"
    t.integer "duration"
  end

end