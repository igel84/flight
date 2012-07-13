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

ActiveRecord::Schema.define(:version => 20120712204007) do

  create_table "airports", :force => true do |t|
    t.string   "name",       :limit => 50
    t.integer  "city_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "calcs", :force => true do |t|
    t.integer  "spec_id"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "specification_id"
  end

  create_table "cherteg_cost_histories", :force => true do |t|
    t.integer  "user_id"
    t.integer  "cherteg_id"
    t.integer  "work_id"
    t.float    "count"
    t.integer  "status",     :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cherteg_costs", :force => true do |t|
    t.integer  "cherteg_id"
    t.integer  "work_id"
    t.float    "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cherteg_costs", ["cherteg_id"], :name => "chertegcost"

  create_table "cherteg_files", :force => true do |t|
    t.integer  "cherteg_id"
    t.string   "chert_file_name"
    t.string   "chert_content_type"
    t.integer  "chert_file_size"
    t.datetime "chert_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "chertegs", :force => true do |t|
    t.string   "name"
    t.string   "path"
    t.float    "price"
    t.float    "mass"
    t.text     "info"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "cost_updated_at",  :default => '2011-12-16 06:56:17'
    t.float    "lit_mass",         :default => 0.0
    t.string   "kok_num",          :default => ""
    t.string   "kok_info",         :default => ""
    t.integer  "kok_manager_user", :default => 1
    t.datetime "kok_manager_date", :default => '2012-05-04 06:31:25'
    t.boolean  "visible",          :default => true
    t.float    "priceKG",          :default => 0.0
  end

  create_table "cities", :force => true do |t|
    t.string   "name",       :limit => 50
    t.integer  "nation_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "distributions", :force => true do |t|
    t.integer  "payment_id"
    t.integer  "specification_id"
    t.decimal  "summ",             :precision => 12, :scale => 2
    t.datetime "created_at",                                      :null => false
    t.datetime "updated_at",                                      :null => false
    t.datetime "projection_at"
  end

  create_table "elements", :force => true do |t|
    t.integer  "component"
    t.integer  "splav_id"
    t.float    "count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "material_id", :default => 0
  end

  create_table "equipment", :force => true do |t|
    t.string   "name"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "number_on_the_location_plan"
  end

  create_table "excels", :force => true do |t|
    t.integer  "splav_id"
    t.integer  "extype_id"
    t.integer  "order_id"
    t.text     "deviation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extypes", :force => true do |t|
    t.string   "name"
    t.string   "alias",      :default => "name"
    t.integer  "splav_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "firms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "full_name",   :default => ""
    t.string   "legal_addr",  :default => ""
    t.string   "letter_addr", :default => ""
    t.string   "phone",       :default => ""
    t.string   "tax_id",      :default => ""
    t.string   "okpo",        :default => ""
  end

  add_index "firms", ["name"], :name => "index_firms_on_name"

  create_table "folders", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "parent_id"
    t.integer  "firm_id"
    t.boolean  "visible",    :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gritter_notices", :force => true do |t|
    t.integer  "owner_id",     :null => false
    t.string   "owner_type",   :null => false
    t.text     "text",         :null => false
    t.text     "options",      :null => false
    t.datetime "delivered_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gritter_notices", ["owner_id", "delivered_at"], :name => "index_gritter_notices_on_owner_id_and_delivered_at"

  create_table "komments", :force => true do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "kommented_id"
    t.string   "kommented_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alias",       :default => ""
    t.integer  "user_id",     :default => 1
    t.boolean  "visible",     :default => false
    t.float    "wasteShare",  :default => 0.0
    t.float    "equivalent",  :default => 0.0
    t.float    "payShare",    :default => 0.0
    t.float    "energyShare", :default => 0.0
  end

  create_table "message_attaches", :force => true do |t|
    t.integer  "message_id"
    t.string   "attach_file_name"
    t.string   "attach_content_type"
    t.integer  "attach_file_size"
    t.datetime "attach_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "read",       :default => false
    t.integer  "autor"
    t.integer  "recipient"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["autor", "created_at"], :name => "index_messages_on_autor_and_created_at"
  add_index "messages", ["recipient", "created_at"], :name => "index_messages_on_recipient_and_created_at"

  create_table "nations", :force => true do |t|
    t.string   "name",       :limit => 50
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "norma_chas", :force => true do |t|
    t.integer  "count"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "min",        :default => 150
  end

  create_table "oplats", :force => true do |t|
    t.datetime "oplata_at"
    t.float    "summ"
    t.integer  "zakaz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "client_id"
    t.integer  "recipient_id"
    t.integer  "payer_id"
    t.string   "name"
    t.string   "number"
    t.text     "info"
    t.boolean  "visible",      :default => true
    t.datetime "order_at",     :default => '2011-11-16 08:46:18'
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.integer  "firm_id"
    t.date     "date"
    t.decimal  "summ",         :precision => 12, :scale => 2
    t.string   "number"
    t.string   "invoice"
    t.date     "invoice_date"
    t.boolean  "virtual",                                     :default => true
    t.string   "invoice_firm"
    t.integer  "user_id"
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "request_unit_id"
  end

  add_index "products", ["name"], :name => "name"

  create_table "repair_type_descriptions", :force => true do |t|
    t.integer  "equipment_id"
    t.integer  "repair_type_id"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repair_types", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repair_works", :force => true do |t|
    t.integer  "equipment_id"
    t.datetime "date"
    t.integer  "repair_type_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "request_items", :force => true do |t|
    t.integer  "product_id"
    t.float    "quantity"
    t.string   "price"
    t.integer  "request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unit"
    t.string   "name"
    t.text     "note"
    t.integer  "role_id"
    t.string   "type",            :default => "RequestItem"
    t.integer  "request_unit_id"
  end

  add_index "request_items", ["product_id"], :name => "product"
  add_index "request_items", ["request_id"], :name => "request"
  add_index "request_items", ["request_unit_id"], :name => "index_request_items_on_unit_id"

  create_table "request_units", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
  end

  create_table "requests", :force => true do |t|
    t.integer  "director_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "note"
    t.boolean  "priority"
    t.boolean  "quickly"
    t.boolean  "approve"
    t.datetime "approve_date"
    t.integer  "percents",              :default => 0
    t.boolean  "complete",              :default => false
    t.text     "director_note"
    t.datetime "last_activity"
    t.integer  "last_activity_user_id"
    t.string   "type"
    t.integer  "request_id"
  end

  add_index "requests", ["director_id"], :name => "director"
  add_index "requests", ["user_id"], :name => "user"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alias"
    t.integer  "position"
  end

  create_table "rotations", :force => true do |t|
    t.integer  "user_id"
    t.boolean  "make",       :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specification_tabs", :force => true do |t|
    t.string   "name",             :default => ""
    t.integer  "specification_id"
    t.boolean  "visible",          :default => true
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "calculation"
  end

  create_table "specifications", :force => true do |t|
    t.string   "name"
    t.integer  "firm_id"
    t.boolean  "visible",      :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "specific_doc"
  end

  create_table "specs", :force => true do |t|
    t.boolean  "tender"
    t.float    "price"
    t.integer  "user_id"
    t.integer  "firm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.boolean  "bronza"
    t.boolean  "chugun"
    t.boolean  "meh_yes"
    t.boolean  "meh_no"
    t.boolean  "cher_yes"
    t.integer  "rotation_id"
    t.integer  "solution_id"
    t.boolean  "conflict"
  end

  create_table "splavs", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.boolean  "oxidant",     :default => false
    t.integer  "material_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stock_item_histories", :force => true do |t|
    t.integer  "request_id"
    t.integer  "product_id"
    t.float    "quantity"
    t.string   "destination",     :default => "nothing"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role_id"
    t.integer  "request_item_id"
    t.string   "target"
  end

  create_table "stock_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "role_id"
    t.float    "quantity",        :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "request_unit_id"
  end

  create_table "task_users", :force => true do |t|
    t.boolean  "autor",      :default => false
    t.boolean  "manager",    :default => false
    t.boolean  "worker",     :default => false
    t.integer  "user_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.text     "body"
    t.integer  "count"
    t.boolean  "finish",         :default => false
    t.boolean  "read",           :default => false
    t.boolean  "komment",        :default => false
    t.boolean  "main",           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "repair_work_id"
  end

  create_table "user_messages", :force => true do |t|
    t.integer  "user_id"
    t.integer  "message_id"
    t.boolean  "read",       :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_notices", :force => true do |t|
    t.integer  "user_id"
    t.integer  "payment_count",  :default => 0
    t.integer  "task_count",     :default => 0
    t.integer  "message_count",  :default => 0
    t.integer  "conflict_count", :default => 0
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "color"
    t.boolean  "system"
    t.boolean  "worked"
    t.integer  "position"
    t.integer  "messages_count", :default => 0
    t.boolean  "sendevent",      :default => false
  end

  create_table "voyages", :force => true do |t|
    t.integer  "airport_from_id"
    t.integer  "airport_to_id"
    t.decimal  "price",           :precision => 8, :scale => 2
    t.datetime "crash_at"
    t.datetime "arriving_at"
    t.time     "day"
    t.integer  "transfer_count"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  create_table "works", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zakazs", :force => true do |t|
    t.date     "zakaz_at"
    t.float    "mass"
    t.integer  "material_id"
    t.float    "summ"
    t.float    "rent"
    t.float    "brak"
    t.float    "otkat"
    t.float    "deb"
    t.float    "vug"
    t.string   "info"
    t.float    "obsl"
    t.float    "lit"
    t.float    "meh"
    t.float    "energ"
    t.float    "shiht"
    t.float    "nalog"
    t.float    "obnal"
    t.integer  "spec_id"
    t.date     "otgr_at"
    t.integer  "user_id"
    t.integer  "firm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
