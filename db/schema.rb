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

ActiveRecord::Schema.define(version: 20150819183200) do

  create_table "actor_movies", force: :cascade do |t|
    t.integer  "cast_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cast_media", force: :cascade do |t|
    t.integer  "cast_id"
    t.integer  "media_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "casts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.text     "bio"
    t.string   "photo"
    t.text     "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "category_movies", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "movie_id"
    t.text     "content"
    t.boolean  "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.text     "detail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_movies", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contents", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.text     "content"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "movie_id"
  end

  create_table "director_movies", force: :cascade do |t|
    t.integer  "cast_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "file_one"
    t.string   "file_two"
    t.string   "url_one"
    t.string   "url_two"
    t.text     "video"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "media_movies", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "media_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_writers", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "cast_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "keywords"
    t.text     "storyline"
    t.text     "techspecs"
    t.text     "detail"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "fist_name",              default: "", null: false
    t.string   "last_name",              default: "", null: false
    t.string   "phone",                  default: "", null: false
    t.string   "twitter",                default: "", null: false
    t.string   "facebook",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

  create_table "votes", force: :cascade do |t|
    t.integer  "media_id"
    t.integer  "movie_id"
    t.integer  "user_id"
    t.boolean  "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
