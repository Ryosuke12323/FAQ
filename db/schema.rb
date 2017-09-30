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

ActiveRecord::Schema.define(version: 20170930094514) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "curriculums", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "number",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "qa_curriculums", force: :cascade do |t|
    t.integer  "qa_id",         limit: 4
    t.integer  "curriculum_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "qa_curriculums", ["curriculum_id"], name: "fk_rails_2d169fbdd4", using: :btree
  add_index "qa_curriculums", ["qa_id"], name: "fk_rails_8b041b4f7f", using: :btree

  create_table "qas", force: :cascade do |t|
    t.text     "question",    limit: 65535, null: false
    t.text     "answer",      limit: 65535, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "category_id", limit: 4
  end

  add_index "qas", ["category_id"], name: "index_qas_on_category_id", using: :btree

  add_foreign_key "qa_curriculums", "curriculums"
  add_foreign_key "qa_curriculums", "qas"
end
