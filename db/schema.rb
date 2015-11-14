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

ActiveRecord::Schema.define(version: 20151114070746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choices", force: :cascade do |t|
    t.string "title"
  end

  create_table "multi_choice_answers", force: :cascade do |t|
    t.integer "choice_id"
    t.integer "multi_choice_question_id"
  end

  add_index "multi_choice_answers", ["choice_id"], name: "index_multi_choice_answers_on_choice_id", using: :btree
  add_index "multi_choice_answers", ["multi_choice_question_id"], name: "index_multi_choice_answers_on_multi_choice_question_id", using: :btree

  create_table "open_text_answers", force: :cascade do |t|
    t.text    "message"
    t.integer "open_text_question_id"
  end

  add_index "open_text_answers", ["open_text_question_id"], name: "index_open_text_answers_on_open_text_question_id", using: :btree

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.text   "content"
    t.string "type"
  end

  create_table "scale_answers", force: :cascade do |t|
    t.integer "answer"
    t.integer "scale_question_id"
  end

  add_index "scale_answers", ["scale_question_id"], name: "index_scale_answers_on_scale_question_id", using: :btree

end
