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

ActiveRecord::Schema.define(version: 20161128182917) do

  create_table "coffee_makers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "product_type"
    t.boolean  "water_line_compatible"
    t.string   "sku"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "image_url"
    t.string   "product_title"
  end

  create_table "coffee_pods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "product_type"
    t.string   "coffee_flavor"
    t.integer  "pack_size"
    t.string   "sku"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "image_url"
    t.string   "product_title"
  end

  create_table "maker_pods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "coffee_maker_id"
    t.integer  "coffee_pod_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
