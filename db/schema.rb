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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121106164107) do

  create_table "images", :force => true do |t|
    t.string   "url"
    t.integer  "ski_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inventories", :force => true do |t|
    t.integer  "store_id"
    t.integer  "ski_id"
    t.integer  "size_available"
    t.string   "ski_url"
    t.decimal  "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "skis", :force => true do |t|
    t.string   "ability_level"
    t.string   "brand"
    t.text     "description"
    t.string   "gender"
    t.integer  "model_year"
    t.string   "name"
    t.string   "rocker_type"
    t.string   "ski_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "specs", :force => true do |t|
    t.integer  "length"
    t.decimal  "turning_radius"
    t.integer  "tip_width"
    t.integer  "waist_width"
    t.integer  "tail_width"
    t.decimal  "weight"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "ski_id"
  end

  create_table "stores", :force => true do |t|
    t.string   "name"
    t.integer  "ski_id"
    t.string   "store_url"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "inventory_id"
  end

end
