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

ActiveRecord::Schema.define(version: 20171118131757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "trip_id"
    t.bigint "user_id"
    t.date "from_date"
    t.date "to_date"
    t.integer "number_of_people"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trip_id"], name: "index_bookings_on_trip_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.decimal "latitude", precision: 15, scale: 6
    t.decimal "longitude", precision: 15, scale: 6
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conversation_participants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "conversation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_conversation_participants_on_conversation_id"
    t.index ["user_id"], name: "index_conversation_participants_on_user_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "key"
    t.string "capital"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "capital_city_id"
  end

  create_table "locals", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "available", default: false
    t.boolean "active", default: true
    t.date "available_from"
    t.date "available_to"
    t.string "description"
    t.string "quote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "city_id"
    t.integer "country_id"
  end

  create_table "messages", force: :cascade do |t|
    t.bigint "conversation_participant_id"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_participant_id"], name: "index_messages_on_conversation_participant_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.string "object_type"
    t.integer "object_id"
    t.string "text"
    t.integer "stars"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "trip_status"
    t.integer "trip_type"
    t.integer "number_of_people", default: 1
    t.date "from_date"
    t.date "to_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "city_id"
    t.index ["city_id"], name: "index_trips_on_city_id"
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "birthday"
    t.integer "gender", limit: 2
    t.boolean "active", default: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "bookings", "trips"
  add_foreign_key "bookings", "users"
  add_foreign_key "conversation_participants", "conversations"
  add_foreign_key "conversation_participants", "users"
  add_foreign_key "messages", "conversation_participants"
  add_foreign_key "reviews", "users"
  add_foreign_key "trips", "cities"
  add_foreign_key "trips", "users"
end
