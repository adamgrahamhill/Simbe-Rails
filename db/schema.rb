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

ActiveRecord::Schema.define(version: 20160730185818) do

  create_table "blog_posts", force: :cascade do |t|
    t.string   "title"
    t.string   "content"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "headlines", force: :cascade do |t|
    t.string   "text"
    t.boolean  "selected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "screen_cap_file_name"
    t.string   "screen_cap_content_type"
    t.integer  "screen_cap_file_size"
    t.datetime "screen_cap_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.boolean  "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
