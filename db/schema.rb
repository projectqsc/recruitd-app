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

ActiveRecord::Schema.define(version: 20140815125323) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "authorizations", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.string   "token"
    t.string   "secret"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  create_table "educations", force: true do |t|
    t.string   "college"
    t.string   "degree"
    t.string   "field"
    t.string   "graduation_year"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employments", force: true do |t|
    t.string   "company"
    t.string   "position"
    t.string   "start_date"
    t.string   "end_date"
    t.boolean  "is_present"
    t.text     "description"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "startdate"
    t.datetime "enddate"
  end

  create_table "industries", force: true do |t|
    t.integer  "profile_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "name"
    t.boolean  "is_parent"
    t.integer  "parentid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.integer  "profile_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "proficiency"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.boolean  "is_parent"
    t.integer  "parentid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profile_jobs", force: true do |t|
    t.integer "profile_id"
    t.integer "job_id"
  end

  create_table "profiles", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "location"
    t.string   "phone"
    t.text     "skills"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "web_site"
    t.string   "blog"
    t.string   "stack_overflow"
    t.string   "dribble"
    t.string   "picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.text     "summary"
    t.string   "small_picture_url"
    t.string   "filepicker_url"
    t.string   "resume_url"
    t.string   "status",            default: "Awaiting"
    t.datetime "approval_date"
    t.string   "profile_type"
    t.string   "profile_status",    default: "Registered"
    t.string   "country"
  end

  create_table "recommendations", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "status"
    t.integer  "profile_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_privacies", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",     default: "Awaiting"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: "",           null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "authentication_token"
    t.string   "image"
    t.string   "location"
    t.string   "username"
    t.string   "verification_status",    default: "Unverified"
    t.string   "status",                 default: "Registered"
    t.datetime "submission_date"
    t.datetime "approval_date"
    t.string   "last_name"
    t.string   "contry"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
