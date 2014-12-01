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

ActiveRecord::Schema.define(version: 20141201070331) do

  create_table "bids", force: true do |t|
    t.integer  "team_id"
    t.integer  "project_id"
    t.text     "bid_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "priority"
  end

  create_table "join_team_contracts", force: true do |t|
    t.integer  "team_id"
    t.integer  "student_id"
    t.boolean  "team_accepted"
    t.boolean  "student_accepted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "interests"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "point_of_contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
