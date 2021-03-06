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

ActiveRecord::Schema.define(version: 20160804122216) do

  create_table "brokers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "telephone"
    t.string   "acc_number"
    t.string   "acc_password"
    t.integer  "broker_id"
    t.integer  "server_id"
    t.integer  "service_id"
    t.string   "vps_password"
    t.date     "begin_date"
    t.integer  "period_months"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "vps_client_id"
    t.string   "vp_server_id"
  end

  add_index "clients", ["broker_id"], name: "index_clients_on_broker_id"
  add_index "clients", ["server_id"], name: "index_clients_on_server_id"
  add_index "clients", ["service_id"], name: "index_clients_on_service_id"

  create_table "servers", force: :cascade do |t|
    t.string   "name"
    t.string   "ip"
    t.integer  "broker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "servers", ["broker_id"], name: "index_servers_on_broker_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "surname"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vp_servers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
