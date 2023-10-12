# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_12_170214) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devotions", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.date "date"
    t.bigint "created_by_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by_id"], name: "index_devotions_on_created_by_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.text "description"
    t.date "date"
    t.bigint "created_by_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_by_id"], name: "index_events_on_created_by_id"
  end

  create_table "fellowship_groups", force: :cascade do |t|
    t.string "group_name"
    t.bigint "created_by_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "group_code"
    t.index ["created_by_id"], name: "index_fellowship_groups_on_created_by_id"
    t.index ["group_code"], name: "index_fellowship_groups_on_group_code", unique: true
  end

  create_table "leadership_positions", force: :cascade do |t|
    t.string "position_name"
    t.text "description"
    t.string "position_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "created_by_id"
    t.index ["created_by_id"], name: "index_leadership_positions_on_created_by_id"
    t.index ["position_code"], name: "index_leadership_positions_on_position_code", unique: true
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "email"
    t.string "fellowship_group"
    t.boolean "baptised"
    t.bigint "leadership_position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["leadership_position_id"], name: "index_members_on_leadership_position_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.bigint "member_id"
    t.boolean "super_admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "devotions", "users", column: "created_by_id"
  add_foreign_key "events", "users", column: "created_by_id"
  add_foreign_key "fellowship_groups", "users", column: "created_by_id"
  add_foreign_key "members", "leadership_positions"
  add_foreign_key "users", "members", on_delete: :nullify
end
