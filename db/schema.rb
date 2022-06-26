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

ActiveRecord::Schema.define(version: 2022_06_19_203513) do

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "fullname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_cities_on_company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "rif"
    t.string "country"
    t.integer "admin_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_id"], name: "index_companies_on_admin_id"
  end

  create_table "distributors", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "website"
    t.string "pdf"
    t.string "phone"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_distributors_on_company_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.date "date"
    t.integer "item_id"
    t.integer "quantity"
    t.integer "unit_cost"
    t.integer "city_id", null: false
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_inventories_on_city_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "marca"
    t.string "codigo"
    t.integer "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["supplier_id"], name: "index_items_on_supplier_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "commission"
    t.integer "store_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_sellers_on_store_id"
  end

  create_table "sells", force: :cascade do |t|
    t.date "date"
    t.integer "item_id"
    t.integer "sold_price_dollar"
    t.integer "sold_price_bs"
    t.string "platform"
    t.string "profit"
    t.string "payment_type"
    t.integer "commission_platform"
    t.integer "seller_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.integer "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_stores_on_city_id"
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "commission"
    t.integer "city_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_supervisors_on_city_id"
  end

  add_foreign_key "cities", "companies"
  add_foreign_key "companies", "admins"
  add_foreign_key "distributors", "companies"
  add_foreign_key "inventories", "cities"
  add_foreign_key "items", "suppliers"
  add_foreign_key "sellers", "stores"
  add_foreign_key "stores", "cities"
  add_foreign_key "supervisors", "cities"
end
