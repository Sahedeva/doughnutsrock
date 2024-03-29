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

ActiveRecord::Schema.define(version: 20150924210013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.text     "path",       null: false
    t.text     "caption"
    t.integer  "height"
    t.integer  "width"
    t.text     "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "name"
    t.integer  "user_id"
  end

  add_index "photos", ["title"], name: "index_photos_on_title", using: :btree
  add_index "photos", ["user_id"], name: "index_photos_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.text     "first_name",      null: false
    t.text     "last_name",       null: false
    t.text     "email",           null: false
    t.text     "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "photos", "users"
end
