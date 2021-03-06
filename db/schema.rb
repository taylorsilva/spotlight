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

ActiveRecord::Schema.define(version: 20140406072326) do

  create_table "episodes", force: true do |t|
    t.integer  "podcast_id"
    t.string   "stream_url"
    t.integer  "duration"
    t.string   "title"
    t.string   "description"
    t.boolean  "upvote_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "min_upvotes"
  end

  create_table "podcasts", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "email"
    t.string   "website"
    t.string   "description"
    t.boolean  "live"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "podcasts", ["user_id"], name: "index_podcasts_on_user_id"

  create_table "submissions", force: true do |t|
    t.integer  "user_id"
    t.integer  "episode_id"
    t.integer  "upvotes"
    t.integer  "status",      default: 0
    t.string   "description"
    t.string   "type"
    t.integer  "submitted"
    t.integer  "responded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  add_index "user", ["email"], name: "index_user_on_email", unique: true

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
