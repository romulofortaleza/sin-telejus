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

ActiveRecord::Schema.define(version: 2018_08_16_131634) do

  create_table "activities", force: :cascade do |t|
    t.string "description"
    t.string "action"
    t.boolean "isMenu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "icon"
    t.integer "order", precision: 38
    t.integer "activity_id", precision: 38
    t.index ["activity_id"], name: "i_activities_activity_id"
  end

  create_table "activity_roles", force: :cascade do |t|
    t.integer "activity_id", limit: 19, precision: 19
    t.integer "role_id", limit: 19, precision: 19
    t.boolean "granted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "i_activity_roles_activity_id"
    t.index ["role_id"], name: "i_activity_roles_role_id"
  end

  create_table "address_organs", force: :cascade do |t|
    t.integer "code", precision: 38
    t.string "organ"
    t.date "last_update"
    t.string "type"
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "component_courts", force: :cascade do |t|
    t.string "code"
    t.string "organ"
    t.date "last_update"
    t.string "public_defender"
    t.text "composition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "duties", force: :cascade do |t|
    t.string "title"
    t.string "file"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "activity_id", precision: 38
    t.binary "data"
    t.index ["activity_id"], name: "index_duties_on_activity_id"
  end

  create_table "judgeauxes", force: :cascade do |t|
    t.integer "code", precision: 38
    t.string "organ"
    t.string "last_update"
    t.string "judge_title"
    t.text "judge_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "registries", force: :cascade do |t|
    t.integer "code", precision: 38
    t.string "organ"
    t.string "county"
    t.date "last_update"
    t.string "holder"
    t.string "email"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "locate"
    t.string "room"
    t.string "last_update"
    t.text "phones"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sticks", force: :cascade do |t|
    t.integer "code", precision: 38
    t.string "organ"
    t.string "horary"
    t.date "last_date"
    t.string "judge"
    t.string "public_defensor"
    t.string "curation"
    t.string "promoter"
    t.string "address"
    t.string "phones"
    t.string "circumscription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "townships", force: :cascade do |t|
    t.string "entrance"
    t.integer "code", precision: 38
    t.string "nucleus"
    t.date "last_update"
    t.string "district"
    t.text "forum"
    t.string "address"
    t.string "phone"
    t.string "supervisor"
    t.string "assistant"
    t.text "relantionship"
    t.text "judicial_districts"
    t.text "titular_jugde"
    t.text "responsiblej"
    t.text "promoter_owner"
    t.text "promoter_change"
    t.text "public_defender"
    t.text "team"
    t.text "componentsj"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "upper_components", force: :cascade do |t|
    t.string "organ"
    t.date "last_update"
    t.text "composition"
    t.text "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: 6
    t.datetime "remember_created_at", precision: 6
    t.integer "sign_in_count", precision: 38, default: 0, null: false
    t.datetime "current_sign_in_at", precision: 6
    t.datetime "last_sign_in_at", precision: 6
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.integer "role", precision: 38
    t.string "name"
    t.integer "role_id", precision: 38
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "i_users_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["username"], name: "index_users_on_username"
  end

  add_foreign_key "activities", "activities"
  add_foreign_key "activity_roles", "activities"
  add_foreign_key "activity_roles", "roles"
  add_foreign_key "duties", "activities"
  add_foreign_key "users", "roles"
end
