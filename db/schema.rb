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

ActiveRecord::Schema.define(version: 20160104195923) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "aulas", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.string   "video"
    t.boolean  "section_header", default: false, null: false
    t.string   "tag"
    t.integer  "curso_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "point"
    t.integer  "time"
    t.string   "downloadlink"
  end

  add_index "aulas", ["curso_id"], name: "index_aulas_on_curso_id"

  create_table "cursos", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "price"
    t.string   "image"
    t.string   "tag"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "color"
    t.integer  "trilha_id"
    t.integer  "subtrilha_id"
    t.string   "icon"
    t.text     "public"
    t.integer  "time"
    t.string   "indexicon"
    t.integer  "point"
    t.text     "requeriment"
  end

  add_index "cursos", ["subtrilha_id"], name: "index_cursos_on_subtrilha_id"
  add_index "cursos", ["trilha_id"], name: "index_cursos_on_trilha_id"

  create_table "reviews", force: :cascade do |t|
    t.integer  "curso_id"
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.integer  "star"
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["curso_id"], name: "index_reviews_on_curso_id"
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id"

  create_table "subscriptions", force: :cascade do |t|
    t.integer  "curso_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subscriptions", ["curso_id", "user_id"], name: "index_subscriptions_on_curso_id_and_user_id", unique: true
  add_index "subscriptions", ["curso_id"], name: "index_subscriptions_on_curso_id"
  add_index "subscriptions", ["user_id"], name: "index_subscriptions_on_user_id"

  create_table "trilhas", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "icon"
    t.integer  "time"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
