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

ActiveRecord::Schema[7.0].define(version: 2023_08_22_180650) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "author_works", primary_key: ["author_key", "work_key"], force: :cascade do |t|
    t.text "author_key", null: false
    t.text "work_key", null: false
    t.index ["author_key", "work_key"], name: "cuix_authorworks_authorkey_workkey", unique: true
    t.index ["author_key"], name: "ix_authorworks_authorkey"
    t.index ["work_key"], name: "ix_authorworks_workkey"
  end

  create_table "authors", primary_key: "key", id: :text, force: :cascade do |t|
    t.text "name", null: false
    t.json "links"
    t.virtual "searchable", type: :tsvector, as: "setweight(to_tsvector('english'::regconfig, COALESCE(name, ''::text)), 'A'::\"char\")", stored: true
    t.index ["searchable"], name: "index_authors_on_searchable", using: :gin
  end

  create_table "bookcases", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name", null: false
    t.string "work_keys", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_bookcases_on_user_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  create_table "works", primary_key: "key", id: :text, force: :cascade do |t|
    t.integer "revision"
    t.text "title", null: false
    t.json "covers"
    t.virtual "searchable", type: :tsvector, as: "setweight(to_tsvector('english'::regconfig, COALESCE(title, ''::text)), 'A'::\"char\")", stored: true
    t.index ["searchable"], name: "index_works_on_searchable", using: :gin
  end

end
