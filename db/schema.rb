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

ActiveRecord::Schema.define(:version => 20120712205824) do

  create_table "airports", :force => true do |t|
    t.string   "name",       :limit => 50
    t.integer  "city_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name",       :limit => 50
    t.integer  "nation_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "nations", :force => true do |t|
    t.string   "name",       :limit => 50
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "transfers", :force => true do |t|
    t.integer  "airport_id"
    t.datetime "day"
    t.integer  "voyage_id"
    t.datetime "crash_at"
    t.datetime "arriving_at"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "voyages", :force => true do |t|
    t.integer  "airpot_from"
    t.integer  "airport_to"
    t.decimal  "price",          :precision => 8, :scale => 2
    t.datetime "crash_at"
    t.datetime "arriving_at"
    t.datetime "day"
    t.integer  "transfer_count"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

end
