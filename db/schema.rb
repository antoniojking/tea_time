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

ActiveRecord::Schema.define(version: 2021_11_10_144454) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flavors", force: :cascade do |t|
    t.bigint "tea_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "package_id"
    t.index ["package_id"], name: "index_flavors_on_package_id"
    t.index ["tea_id"], name: "index_flavors_on_tea_id"
  end

  create_table "packages", force: :cascade do |t|
    t.string "title"
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "subscription_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_plans_on_customer_id"
    t.index ["subscription_id"], name: "index_plans_on_subscription_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.integer "price"
    t.integer "status"
    t.integer "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "package_id"
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_subscriptions_on_customer_id"
    t.index ["package_id"], name: "index_subscriptions_on_package_id"
  end

  create_table "teas", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "temperature"
    t.string "brew_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "flavors", "packages"
  add_foreign_key "flavors", "teas"
  add_foreign_key "plans", "customers"
  add_foreign_key "plans", "subscriptions"
  add_foreign_key "subscriptions", "customers"
  add_foreign_key "subscriptions", "packages"
end
