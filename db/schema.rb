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

ActiveRecord::Schema.define(version: 20120731040404) do

  create_table "contacts", force: true do |t|
    t.string   "name",                  null: false
    t.string   "address"
    t.integer  "postcode",              null: false
    t.string   "phone",                 null: false
    t.string   "email",                 null: false
    t.string   "prefer_contact",        null: false
    t.text     "bathroom_requirements", null: false
    t.decimal  "budget"
    t.text     "other_comments",        null: false
    t.datetime "created_at"
  end

  add_index "contacts", ["name"], name: "index_contacts_on_name", using: :btree

  create_table "delayed_jobs", force: true do |t|
    t.integer  "priority",   default: 0
    t.integer  "attempts",   default: 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree

  create_table "galleries", force: true do |t|
    t.string   "title",                     null: false
    t.text     "description"
    t.string   "image",                     null: false
    t.string   "active",      default: "Y", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.integer  "postcode"
    t.string   "suburb"
    t.string   "active",     default: "Y", null: false
    t.datetime "created_at"
  end

  add_index "locations", ["postcode"], name: "index_locations_on_postcode", using: :btree
  add_index "locations", ["suburb"], name: "index_locations_on_suburb", using: :btree

  create_table "quotes", force: true do |t|
    t.string   "name",                               null: false
    t.string   "email",                              null: false
    t.string   "phone",                              null: false
    t.integer  "postcode",                           null: false
    t.string   "ground_floor"
    t.string   "access_difficulty",                  null: false
    t.date     "job_completion"
    t.string   "full_renovation"
    t.text     "other_comments"
    t.decimal  "set_quote",         default: 8000.0, null: false
    t.decimal  "final_quote",                        null: false
    t.datetime "created_at"
  end

  add_index "quotes", ["name"], name: "index_quotes_on_name", using: :btree

  create_table "testimonials", force: true do |t|
    t.string   "name"
    t.string   "suburb"
    t.text     "comment"
    t.string   "active",     default: "Y", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "testimonials", ["name"], name: "index_testimonials_on_name", using: :btree

  create_table "users", force: true do |t|
    t.string   "username",                             null: false
    t.string   "password"
    t.string   "active",                 default: "Y", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "",  null: false
    t.string   "encrypted_password",     default: "",  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
