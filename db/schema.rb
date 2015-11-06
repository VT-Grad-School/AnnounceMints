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

ActiveRecord::Schema.define(version: 20151106023853) do

  create_table "announcements", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "contact",     limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "calls", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.string   "organization",   limit: 255
    t.text     "description",    limit: 65535
    t.text     "qualifications", limit: 65535
    t.string   "compensation",   limit: 255
    t.string   "url",            limit: 255
    t.string   "contact",        limit: 255
    t.datetime "deadline"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.datetime "start_datetime"
    t.date     "end_date"
    t.time     "end_time"
    t.string   "recurring",      limit: 255
    t.string   "location",       limit: 255
    t.text     "description",    limit: 65535
    t.string   "url",            limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "hirer",             limit: 255
    t.string   "compensation_type", limit: 255
    t.text     "description",       limit: 65535
    t.datetime "deadline"
    t.string   "url",               limit: 255
    t.string   "contact",           limit: 255
    t.text     "qualifications",    limit: 65535
    t.date     "start_date"
    t.string   "duration",          limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
