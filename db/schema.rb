# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_24_111327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "pro_id"
    t.index ["pro_id"], name: "index_bookings_on_pro_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "start_date"
    t.string "status"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "projectservices", force: :cascade do |t|
    t.bigint "project_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_projectservices_on_project_id"
    t.index ["service_id"], name: "index_projectservices_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "type"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "userprojects", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "project_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["project_id"], name: "index_userprojects_on_project_id"
    t.index ["user_id"], name: "index_userprojects_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "artist_name"
    t.text "bio"
    t.string "genre"
    t.boolean "pro", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "userservices", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_userservices_on_service_id"
    t.index ["user_id"], name: "index_userservices_on_user_id"
  end

  add_foreign_key "bookings", "users"
  add_foreign_key "projects", "users"
  add_foreign_key "projectservices", "projects"
  add_foreign_key "projectservices", "services"
  add_foreign_key "userprojects", "projects"
  add_foreign_key "userprojects", "users"
  add_foreign_key "userservices", "services"
  add_foreign_key "userservices", "users"
end
