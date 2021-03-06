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

ActiveRecord::Schema.define(version: 20191114053206) do

  create_table "customers", force: :cascade do |t|
    t.string "customer_code"
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.string "mobile_number"
    t.string "zip"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_code"], name: "index_customers_on_customer_code", unique: true
  end

  create_table "repairs", force: :cascade do |t|
    t.date "signup_at"
    t.string "customer_name"
    t.string "phone_number"
    t.string "mobile_number"
    t.string "address"
    t.string "progress"
    t.string "reminder"
    t.string "note"
    t.string "summary_1"
    t.string "summary_2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "machine_type"
    t.string "contacted"
  end

  create_table "stoves", force: :cascade do |t|
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "summary_1"
    t.string "summary_2"
    t.date "signup_at"
    t.string "customer_name"
    t.string "phone_number"
    t.string "mobile_number"
    t.string "address"
    t.string "progress"
    t.string "reminder"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
