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

ActiveRecord::Schema.define(version: 20141119090608) do

  create_table "projects", force: true do |t|
    t.string   "project_company_name"
    t.string   "project_company_technical_name"
    t.string   "project_company_technical_designation"
    t.string   "project_company_technical_email"
    t.string   "project_company_technical_phone"
    t.string   "project_company_director_name"
    t.string   "project_company_director_designation"
    t.string   "project_company_director_email"
    t.string   "project_company_director_phone"
    t.string   "project_name"
    t.string   "project_background"
    t.string   "project_concept"
    t.string   "project_design"
    t.string   "project_skills"
    t.string   "project_solutions"
    t.boolean  "project_nda_required"
	t.boolean  "project_approved"
    t.boolean  "project_funding_commitment"
    t.boolean  "project_company_email_conf"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "point_of_contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
