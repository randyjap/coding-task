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

ActiveRecord::Schema.define(version: 20170413030758) do

  create_table "alternatives", force: :cascade do |t|
    t.integer  "answer_id",   null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["answer_id"], name: "index_alternatives_on_answer_id"
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "revision_id", null: false
    t.string   "description", null: false
    t.boolean  "correct",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["revision_id"], name: "index_answers_on_revision_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "description",          null: false
    t.integer  "approved_revision_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["approved_revision_id"], name: "index_questions_on_approved_revision_id"
  end

  create_table "revisions", force: :cascade do |t|
    t.integer  "question_id", null: false
    t.integer  "version",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["question_id"], name: "index_revisions_on_question_id"
  end

end
