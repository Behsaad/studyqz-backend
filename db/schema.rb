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

ActiveRecord::Schema.define(version: 20140604163154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "lecturer"
    t.integer  "semester"
    t.integer  "subject_id"
    t.integer  "university_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["subject_id"], name: "index_courses_on_subject_id", using: :btree
  add_index "courses", ["university_id"], name: "index_courses_on_university_id", using: :btree
  add_index "courses", ["user_id"], name: "index_courses_on_user_id", using: :btree

  create_table "questions", force: true do |t|
    t.integer  "course_id"
    t.string   "question"
    t.string   "answer1"
    t.string   "answer2"
    t.string   "answer3"
    t.boolean  "answer1correct"
    t.boolean  "answer2correct"
    t.boolean  "answer3correct"
    t.string   "explanation"
    t.string   "linkurl"
    t.string   "linkname"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["course_id"], name: "index_questions_on_course_id", using: :btree
  add_index "questions", ["user_id"], name: "index_questions_on_user_id", using: :btree

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.integer  "university_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["university_id"], name: "index_subjects_on_university_id", using: :btree

  create_table "universities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "facebookid"
    t.integer  "boosts"
    t.integer  "jokers"
    t.integer  "xp"
    t.integer  "university_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["subject_id"], name: "index_users_on_subject_id", using: :btree
  add_index "users", ["university_id"], name: "index_users_on_university_id", using: :btree

end
