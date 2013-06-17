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

ActiveRecord::Schema.define(:version => 20130605174723) do

  create_table "admins", :force => true do |t|
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
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "dim_localites", :force => true do |t|
    t.integer  "loc_sk"
    t.string   "loc_zone"
    t.string   "loc_district"
    t.string   "loc_region"
    t.string   "loc_dept"
    t.string   "loc_ville"
    t.date     "effective_date"
    t.date     "expiry_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "dim_producteurs", :primary_key => "prod_sk", :force => true do |t|
    t.integer "prod_id"
    t.string  "prod_name",      :limit => 50
    t.string  "prod_uap",       :limit => 50
    t.string  "prod_site",      :limit => 50
    t.string  "prod_district",  :limit => 50
    t.string  "prod_region",    :limit => 50
    t.string  "prod_dept",      :limit => 50
    t.string  "prod_ville",     :limit => 50
    t.date    "effective_date"
    t.date    "expiry_date"
  end

  create_table "dim_produits", :primary_key => "product_sk", :force => true do |t|
    t.integer "product_code"
    t.string  "product_name",     :limit => 50
    t.string  "product_category", :limit => 50
    t.date    "effective_date"
    t.date    "expiry_date"
  end

  create_table "pages", :force => true do |t|
    t.integer  "subject_id"
    t.string   "name"
    t.string   "permalink"
    t.integer  "position"
    t.boolean  "visible",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "pages", ["permalink"], :name => "index_pages_on_permalink"
  add_index "pages", ["subject_id"], :name => "index_pages_on_subject_id"

  create_table "publications", :force => true do |t|
    t.integer  "typublication_id"
    t.string   "numpublication"
    t.string   "titrepublication"
    t.text     "description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "fichier_file_name"
    t.string   "fichier_content_type"
    t.integer  "fichier_file_size"
    t.datetime "fichier_updated_at"
  end

  add_index "publications", ["titrepublication"], :name => "index_publications_on_titrepublication"

  create_table "sections", :force => true do |t|
    t.integer  "page_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",      :default => false
    t.string   "content_type"
    t.text     "content"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "sections", ["page_id"], :name => "index_sections_on_page_id"

  create_table "stg_producteurs", :id => false, :force => true do |t|
    t.integer "prod_id"
    t.string  "prod_name",     :limit => 50
    t.string  "prod_uap",      :limit => 50
    t.string  "prod_site",     :limit => 50
    t.string  "prod_district", :limit => 50
    t.string  "prod_region",   :limit => 50
    t.string  "prod_dept",     :limit => 50
    t.string  "prod_ville",    :limit => 50
  end

  create_table "stg_produits", :id => false, :force => true do |t|
    t.integer "product_code"
    t.string  "product_name",     :limit => 50
    t.string  "product_category", :limit => 50
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible",    :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "typublication1", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at"
  end

  create_table "typublications", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

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
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
