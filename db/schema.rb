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

ActiveRecord::Schema.define(version: 20140821215815) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "department"
    t.integer  "user_id"
    t.integer  "university_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_number"
  end

  add_index "courses", ["university_id"], name: "index_courses_on_university_id"
  add_index "courses", ["user_id"], name: "index_courses_on_user_id"

  create_table "notes", force: true do |t|
    t.string   "file"
    t.integer  "course_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "date"
    t.integer  "upvote_count", default: 0
  end

  add_index "notes", ["course_id"], name: "index_notes_on_course_id"
  add_index "notes", ["user_id"], name: "index_notes_on_user_id"

  create_table "universities", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "upvotes", force: true do |t|
    t.integer  "user_id"
    t.integer  "note_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "upvotes", ["note_id"], name: "index_upvotes_on_note_id"
  add_index "upvotes", ["user_id"], name: "index_upvotes_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "university"
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",           default: false
    t.string   "bio"
  end

end
