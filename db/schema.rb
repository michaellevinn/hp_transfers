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

ActiveRecord::Schema.define(version: 20160819092704) do

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.integer  "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hotels", ["partner_id"], name: "index_hotels_on_partner_id"

  create_table "partners", force: :cascade do |t|
    t.string   "name"
    t.string   "legal_name"
    t.string   "legal_address"
    t.string   "inn"
    t.string   "kpp"
    t.string   "account"
    t.string   "bank"
    t.string   "bik"
    t.string   "bank_account"
    t.string   "ceo_title"
    t.string   "ceo_name"
    t.string   "contract_number"
    t.date     "contract_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

end
