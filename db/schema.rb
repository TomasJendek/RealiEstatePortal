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

ActiveRecord::Schema.define(:version => 20130601174045) do

  create_table "abilities", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "apartments", :force => true do |t|
    t.integer  "material"
    t.integer  "state"
    t.integer  "age"
    t.integer  "bathroom"
    t.boolean  "cellar"
    t.boolean  "internet"
    t.boolean  "parking"
    t.integer  "room"
    t.boolean  "telephone"
    t.integer  "toalette"
    t.boolean  "tv"
    t.integer  "area"
    t.boolean  "escalator"
    t.boolean  "loft"
    t.boolean  "mezonet"
    t.integer  "locality"
    t.integer  "ownership"
    t.integer  "type"
    t.integer  "owner"
    t.text     "description"
    t.boolean  "loan"
    t.string   "name"
    t.integer  "prize"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "state_id"
  end

  create_table "counties", :primary_key => "county_id", :force => true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "counties", ["county_id"], :name => "index_counties_on_county_id", :unique => true
  add_index "counties", ["state_id"], :name => "index_counties_on_state_id"

  create_table "houses", :force => true do |t|
    t.integer  "material"
    t.integer  "state"
    t.integer  "age"
    t.integer  "bathroom"
    t.boolean  "cellar"
    t.boolean  "internet"
    t.boolean  "parking"
    t.integer  "room"
    t.boolean  "telephone"
    t.integer  "toalette"
    t.boolean  "tv"
    t.integer  "field_area"
    t.integer  "house_area"
    t.boolean  "escalator"
    t.integer  "locality"
    t.integer  "ownership"
    t.integer  "type"
    t.integer  "owner"
    t.text     "description"
    t.boolean  "loan"
    t.string   "name"
    t.integer  "prize"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :primary_key => "location_id", :force => true do |t|
    t.string   "name"
    t.integer  "region_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "locations", ["location_id"], :name => "index_locations_on_location_id", :unique => true

  create_table "regions", :primary_key => "region_id", :force => true do |t|
    t.string   "name"
    t.integer  "county_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "regions", ["region_id"], :name => "index_regions_on_region_id", :unique => true

  create_table "states", :primary_key => "state_id", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "states", ["state_id"], :name => "index_states_on_state_id", :unique => true

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
