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

ActiveRecord::Schema.define(version: 20171209232108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "aboutsecrads", force: :cascade do |t|
    t.string "image"
    t.string "title1"
    t.text "body1"
    t.string "title2"
    t.text "body2"
    t.string "title3"
    t.text "body3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "event_id"
    t.integer "sort"
    t.index ["event_id"], name: "index_albums_on_event_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "area"
    t.string "name"
    t.string "email"
    t.integer "cellPhone"
    t.integer "inter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort"
  end

  create_table "contestants", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "mail"
    t.integer "cellphone"
    t.bigint "contest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "video"
    t.string "song"
    t.index ["contest_id"], name: "index_contestants_on_contest_id"
  end

  create_table "contests", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "typeContest"
    t.date "date_start"
    t.date "date_end"
    t.string "award"
    t.float "contest_score"
    t.string "contest_winner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "cont"
    t.integer "sort"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.date "date"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_end"
    t.string "image"
  end

  create_table "homes", force: :cascade do |t|
    t.boolean "showq"
  end

  create_table "options", force: :cascade do |t|
    t.string "title"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.bigint "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort"
    t.index ["album_id"], name: "index_photos_on_album_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "phone"
    t.string "email"
    t.integer "sort"
  end

  create_table "questions", force: :cascade do |t|
    t.string "title"
    t.string "secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "radios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "radiosecrads", force: :cascade do |t|
    t.string "progration"
    t.time "schedule"
    t.string "details"
    t.date "datte"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.time "schedule1"
    t.string "transmition"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.integer "sort"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.boolean "manageService", default: false
    t.boolean "manageEvent", default: false
    t.boolean "manageContact", default: false
    t.boolean "manageAlbum", default: false
    t.boolean "manageAboutsecrad", default: false
    t.boolean "managePoll", default: false
    t.boolean "manageContest", default: false
    t.boolean "manageRadio", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "title"
    t.string "link"
    t.bigint "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort"
    t.index ["album_id"], name: "index_videos_on_album_id"
  end

  create_table "votes", force: :cascade do |t|
    t.string "secret"
    t.integer "question_id"
    t.integer "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "web_pages", force: :cascade do |t|
    t.string "name"
    t.text "link"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sort"
  end

  add_foreign_key "albums", "events"
  add_foreign_key "contestants", "contests"
  add_foreign_key "photos", "albums"
  add_foreign_key "videos", "albums"
end
