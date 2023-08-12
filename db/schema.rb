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

ActiveRecord::Schema[7.0].define(version: 2023_08_12_183830) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookcases", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name", null: false
    t.string "work_ids", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bookcases_on_user_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "jti", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "works", primary_key: "key", id: :text, force: :cascade do |t|
    t.text "type"
    t.integer "revision"
    t.date "last_modified"
    t.jsonb "data"
    t.index ["data"], name: "ix_works_data", opclass: :jsonb_path_ops, using: :gin
    t.index ["key"], name: "cuix_works_key", unique: true
  end

  add_foreign_key "bookcases", "users"
end
