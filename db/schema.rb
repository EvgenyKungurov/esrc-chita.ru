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

ActiveRecord::Schema.define(version: 20160517013330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aboute_posts", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.integer  "aboute_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "aboute_posts", ["aboute_id"], name: "index_aboute_posts_on_aboute_id", using: :btree

  create_table "aboutes", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "answerposts", force: :cascade do |t|
    t.text     "title"
    t.text     "text"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "answer"
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "balance_informations", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",    limit: 255, null: false
    t.string   "data_content_type", limit: 255
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "filials", force: :cascade do |t|
    t.text     "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: :cascade do |t|
    t.text     "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_infos", force: :cascade do |t|
    t.text     "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "question_group_id"
    t.string   "type"
    t.string   "question_text"
    t.integer  "position"
    t.text     "answer_options"
    t.text     "validation_rules"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "services", force: :cascade do |t|
    t.text     "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "position"
    t.text     "type_service"
  end

  create_table "servicetexts", force: :cascade do |t|
    t.text     "title"
    t.integer  "service_id"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "size_pays", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "social_posts", force: :cascade do |t|
    t.text     "title"
    t.text     "text"
    t.integer  "social_service_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "social_services", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "role",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest", limit: 255
    t.string   "remember_token",  limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "uslugis", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: :cascade do |t|
    t.text     "title"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "aboute_posts", "aboutes"
end
