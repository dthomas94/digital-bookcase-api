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

ActiveRecord::Schema[7.0].define(version: 2023_08_09_232054) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "open_library_works", force: :cascade do |t|
    t.string "key"
    t.string "type"
    t.string "title"
    t.string "title_suggest"
    t.string "title_sort"
    t.integer "edition_count"
    t.integer "first_publish_year"
    t.integer "number_of_pages_media"
    t.integer "last_modified_i"
    t.integer "ebook_count_i"
    t.string "ebook_access"
    t.boolean "has_fulltext"
    t.boolean "ublic_scan_b"
    t.integer "_version_"
    t.string "author_facet", array: true
    t.string "publisher_facet", array: true
    t.string "author_name", array: true
    t.string "author_key", array: true
    t.string "language", array: true
    t.string "publisher", array: true
    t.string "isbn", array: true
    t.integer "publish_year", array: true
    t.string "publish_date", array: true
    t.string "edition_key", array: true
    t.string "seed", array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
