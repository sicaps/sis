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

  create_table "dim_countries", :primary_key => "ctry_sk", :force => true do |t|
    t.integer  "version",                                        :null => false
    t.string   "iso",             :limit => 2,                   :null => false
    t.string   "pays",            :limit => 64,                  :null => false
    t.string   "iso3",            :limit => 3,                   :null => false
    t.integer  "iso_numeric",     :limit => 2
    t.string   "country",         :limit => 44,                  :null => false
    t.string   "capital",         :limit => 80
    t.float    "area_sq_km"
    t.integer  "population",      :limit => 8
    t.string   "continent",       :limit => 2
    t.string   "tld",             :limit => 3
    t.string   "currencycode",    :limit => 3
    t.string   "currencyname",    :limit => 13
    t.string   "phone",           :limit => 16
    t.string   "languages"
    t.integer  "geonameid",       :limit => 8
    t.string   "neighbours",      :limit => 41
    t.string   "uemoa_ind",       :limit => 1,  :default => "0", :null => false
    t.string   "cedeao_ind",      :limit => 1,  :default => "0", :null => false
    t.string   "eu_27_ind",       :limit => 1,  :default => "0", :null => false
    t.string   "groupe_pays_ind", :limit => 1,  :default => "0", :null => false
    t.datetime "effective_date"
    t.datetime "expiry_date"
  end

  add_index "dim_countries", ["ISO"], :name => "idx_dim_countries_load_lookup"
  add_index "dim_countries", ["ISO3"], :name => "idx_dim_countries_load_lookup2", :unique => true
  add_index "dim_countries", ["ctry_sk"], :name => "idx_dim_countries_load_tk"

  create_table "dim_cycles", :primary_key => "cycle_sk", :force => true do |t|
    t.string  "cycle_code",     :limit => 50,                :null => false
    t.string  "cycle_name",     :limit => 50,                :null => false
    t.string  "cycle_desc",     :limit => 50
    t.date    "effective_date"
    t.date    "expiry_date"
    t.integer "version",                      :default => 1, :null => false
  end

  add_index "dim_cycles", ["cycle_code"], :name => "idx_dim_cycles_load_lookup", :unique => true

  create_table "dim_date", :primary_key => "date_sk", :force => true do |t|
    t.string   "date_short",              :limit => 8,                 :null => false
    t.string   "date_medium",             :limit => 15,                :null => false
    t.string   "day_abbreviation",        :limit => 4,                 :null => false
    t.string   "month_abbreviation",      :limit => 5,                 :null => false
    t.string   "month_name",              :limit => 10,                :null => false
    t.string   "quarter_name",            :limit => 2,                 :null => false
    t.string   "year_quarter",            :limit => 7,                 :null => false
    t.string   "year_month_abbreviation", :limit => 10,                :null => false
    t.string   "year4",                   :limit => 4,                 :null => false
    t.string   "week_in_year",            :limit => 2,                 :null => false
    t.string   "week_in_month",           :limit => 1,                 :null => false
    t.string   "month_number",            :limit => 2,                 :null => false
    t.string   "quarter_number",          :limit => 1
    t.string   "year_month_number",       :limit => 7,                 :null => false
    t.string   "date_long",               :limit => 18,                :null => false
    t.string   "date_full",               :limit => 30
    t.string   "day_name",                :limit => 8,                 :null => false
    t.string   "year2",                   :limit => 2,                 :null => false
    t.string   "day_in_year",             :limit => 3,                 :null => false
    t.string   "is_last_day_in_month",    :limit => 3,                 :null => false
    t.string   "is_first_day_in_month",   :limit => 3,                 :null => false
    t.string   "is_last_day_in_week",     :limit => 3,                 :null => false
    t.string   "is_first_day_in_week",    :limit => 3,                 :null => false
    t.string   "day_in_month",            :limit => 2,                 :null => false
    t.datetime "date_value"
    t.datetime "effective_date"
    t.datetime "expiry_date"
    t.integer  "version",                               :default => 1, :null => false
  end

  add_index "dim_date", ["date_long"], :name => "idx_dim_date_load_lookup4", :unique => true
  add_index "dim_date", ["date_medium"], :name => "idx_dim_date_load_lookup3", :unique => true
  add_index "dim_date", ["date_value"], :name => "idx_dim_date_load_lookup5", :unique => true
  add_index "dim_date", ["year2", "month_number", "day_in_month"], :name => "idx_dim_date_load_lookup2", :unique => true
  add_index "dim_date", ["year4", "month_number", "day_in_month"], :name => "idx_dim_date_load_lookup", :unique => true

  create_table "dim_irrigation", :primary_key => "irr_sk", :force => true do |t|
    t.string  "irr_code",       :limit => 2,                   :null => false
    t.string  "irr_type",       :limit => 50
    t.string  "irr_statut",     :limit => 1,  :default => "I", :null => false
    t.date    "effective_date"
    t.date    "expiry_date"
    t.integer "version",                      :default => 1,   :null => false
  end

  add_index "dim_irrigation", ["irr_code"], :name => "idx_dim_irrigation_load_lookup", :unique => true

  create_table "dim_localites", :primary_key => "loc_sk", :force => true do |t|
    t.string  "loc_code",       :limit => 8
    t.string  "loc_zone",       :limit => 50
    t.string  "loc_district",   :limit => 50
    t.string  "loc_region",     :limit => 50
    t.string  "loc_dept",       :limit => 50
    t.string  "loc_ville",      :limit => 50
    t.string  "loc_commune",    :limit => 50
    t.date    "effective_date"
    t.date    "expiry_date"
    t.integer "version",                      :default => 1, :null => false
  end

  add_index "dim_localites", ["loc_code"], :name => "idx_dim_localites_load_lookup", :unique => true

  create_table "dim_months", :primary_key => "month_sk", :force => true do |t|
    t.string   "date_short",              :limit => 8,                 :null => false
    t.string   "date_medium",             :limit => 15,                :null => false
    t.string   "day_abbreviation",        :limit => 4,                 :null => false
    t.string   "month_abbreviation",      :limit => 5,                 :null => false
    t.string   "month_name",              :limit => 10,                :null => false
    t.string   "quarter_name",            :limit => 2,                 :null => false
    t.string   "year_quarter",            :limit => 7,                 :null => false
    t.string   "year_month_abbreviation", :limit => 10,                :null => false
    t.string   "year4",                   :limit => 4,                 :null => false
    t.string   "week_in_year",            :limit => 2,                 :null => false
    t.string   "week_in_month",           :limit => 1,                 :null => false
    t.string   "month_number",            :limit => 2,                 :null => false
    t.string   "quarter_number",          :limit => 1,                 :null => false
    t.string   "year_month_number",       :limit => 7,                 :null => false
    t.string   "date_long",               :limit => 18,                :null => false
    t.string   "date_full",               :limit => 30,                :null => false
    t.string   "day_name",                :limit => 8,                 :null => false
    t.string   "year2",                   :limit => 2,                 :null => false
    t.string   "day_in_year",             :limit => 3,                 :null => false
    t.string   "day_in_month",            :limit => 2,                 :null => false
    t.datetime "date_value"
    t.datetime "effective_date"
    t.datetime "expiry_date"
    t.integer  "version",                               :default => 1, :null => false
  end

  add_index "dim_months", ["year2", "day_in_month"], :name => "idx_dim_months_load_lookup2"
  add_index "dim_months", ["year4", "month_number"], :name => "idx_dim_months_load_lookup"

  create_table "dim_producteurs", :primary_key => "prod_sk", :force => true do |t|
    t.integer "prod_id",                                     :null => false
    t.string  "prod_name",      :limit => 50,                :null => false
    t.string  "prod_uap",       :limit => 50,                :null => false
    t.string  "prod_site",      :limit => 50,                :null => false
    t.string  "prod_district",  :limit => 50,                :null => false
    t.string  "prod_region",    :limit => 50,                :null => false
    t.string  "prod_dept",      :limit => 50,                :null => false
    t.string  "prod_ville",     :limit => 50,                :null => false
    t.date    "effective_date"
    t.date    "expiry_date"
    t.integer "version",                      :default => 1, :null => false
  end

  add_index "dim_producteurs", ["prod_id"], :name => "idx_dim_producteurs_load_lookup"

  create_table "dim_produits", :primary_key => "product_sk", :force => true do |t|
    t.integer "product_code"
    t.string  "product_name",     :limit => 80,                :null => false
    t.string  "product_category", :limit => 50,                :null => false
    t.date    "effective_date"
    t.date    "expiry_date"
    t.integer "version",                        :default => 1, :null => false
  end

  add_index "dim_produits", ["product_code"], :name => "idx_dim_produits_load_lookup"

  create_table "dim_transactions", :primary_key => "trans_sk", :force => true do |t|
    t.string  "trans_code",     :limit => 2,                 :null => false
    t.string  "trans_name",     :limit => 50,                :null => false
    t.string  "trans_desc",     :limit => 50
    t.date    "effective_date"
    t.date    "expiry_date"
    t.integer "version",                      :default => 1, :null => false
  end

  add_index "dim_transactions", ["trans_code"], :name => "idx_dim_transactions_load_lookup", :unique => true

  create_table "dim_varietes_cannes", :primary_key => "variete_sk", :force => true do |t|
    t.string  "variete_code",   :limit => 25,                :null => false
    t.string  "variete_name",   :limit => 50,                :null => false
    t.string  "variete_desc",   :limit => 50
    t.date    "effective_date"
    t.date    "expiry_date"
    t.integer "version",                      :default => 1, :null => false
  end

  add_index "dim_varietes_cannes", ["variete_code"], :name => "idx_dim_varietes_cannes_load_lookup"

  create_table "dim_years", :primary_key => "year_sk", :force => true do |t|
    t.string   "campagne",       :limit => 8,                 :null => false
    t.string   "date_short",     :limit => 8,                 :null => false
    t.string   "year4",          :limit => 4,                 :null => false
    t.string   "date_long",      :limit => 25
    t.string   "date_full",      :limit => 30
    t.string   "day_name",       :limit => 10
    t.string   "year2",          :limit => 2,                 :null => false
    t.datetime "date_value"
    t.datetime "effective_date"
    t.datetime "expiry_date"
    t.integer  "version",                      :default => 1, :null => false
  end

  add_index "dim_years", ["year2"], :name => "idx_dim_years_load_lookup2", :unique => true
  add_index "dim_years", ["year4"], :name => "idx_dim_years_load_lookup", :unique => true

  create_table "fact_flux_douane_sucre_civ", :id => false, :force => true do |t|
    t.integer "price_xof",  :limit => 8, :default => 0, :null => false
    t.integer "volume_kg",  :limit => 8, :default => 0, :null => false
    t.integer "trans_sk",                               :null => false
    t.integer "year_sk"
    t.integer "product_sk",                             :null => false
    t.integer "ctry_sk",                                :null => false
  end

  add_index "fact_flux_douane_sucre_civ", ["ctry_sk"], :name => "fact_flux_douane_sucre_civ_I2"
  add_index "fact_flux_douane_sucre_civ", ["product_sk"], :name => "fact_flux_douane_sucre_civ_I3"
  add_index "fact_flux_douane_sucre_civ", ["trans_sk"], :name => "fact_flux_douane_sucre_civ_I4"
  add_index "fact_flux_douane_sucre_civ", ["year_sk"], :name => "fact_flux_douane_sucre_civ_I"

  create_table "fact_marche_prix_sucre_civ", :id => false, :force => true do |t|
    t.integer "price_xof",  :default => 0, :null => false
    t.integer "loc_sk",                    :null => false
    t.integer "product_sk",                :null => false
    t.integer "month_sk",                  :null => false
  end

  add_index "fact_marche_prix_sucre_civ", ["loc_sk"], :name => "fact_marche_prix_sucre_civ_I2"
  add_index "fact_marche_prix_sucre_civ", ["month_sk"], :name => "fact_marche_prix_sucre_civ_I"
  add_index "fact_marche_prix_sucre_civ", ["product_sk"], :name => "fact_marche_prix_sucre_civ_I3"

  create_table "fact_production_agricole", :id => false, :force => true do |t|
    t.integer "year_sk",                                                             :null => false
    t.integer "prod_sk",                                                             :null => false
    t.integer "product_sk",                                                          :null => false
    t.decimal "qte_recoltee_tonnes", :precision => 12, :scale => 3, :default => 0.0, :null => false
    t.integer "irr_sk",                                                              :null => false
    t.float   "sup_recoltee_ha",                                    :default => 0.0, :null => false
  end

  add_index "fact_production_agricole", ["irr_sk"], :name => "fact_production_agricole_I2"
  add_index "fact_production_agricole", ["prod_sk"], :name => "fact_production_agricole_I3"
  add_index "fact_production_agricole", ["product_sk"], :name => "fact_production_agricole_I4"
  add_index "fact_production_agricole", ["year_sk"], :name => "fact_production_agricole_I"

  create_table "fact_production_campagne_kpi_civ", :id => false, :force => true do |t|
    t.integer "year_sk",                                                    :null => false
    t.integer "prod_sk",                                                    :null => false
    t.date    "date_debut"
    t.date    "date_fin"
    t.integer "jours_calendaire"
    t.integer "jours_roulaison"
    t.decimal "surf_rec_indus_ha",            :precision => 8, :scale => 3
    t.decimal "surf_rec_canvi_ha",            :precision => 8, :scale => 3
    t.decimal "rdt_canne_indus_tonnes_ha",    :precision => 4, :scale => 3
    t.decimal "rdt_canne_canvi_tonnes_ha",    :precision => 4, :scale => 3
    t.decimal "rdt_sucre_combined_tonnes_ha", :precision => 4, :scale => 3
    t.decimal "cannes_pesees_tonnes",         :precision => 6, :scale => 0
    t.decimal "cannes_broyees_tonnes",        :precision => 6, :scale => 0
    t.decimal "richesse_pct",                 :precision => 4, :scale => 2
    t.decimal "rdt_pct",                      :precision => 4, :scale => 2
    t.decimal "sucre_tonnes",                 :precision => 5, :scale => 0
  end

  add_index "fact_production_campagne_kpi_civ", ["prod_sk"], :name => "fact_production_campagne_kpi_civ_I2"
  add_index "fact_production_campagne_kpi_civ", ["year_sk"], :name => "fact_production_campagne_kpi_civ_I"

  create_table "fact_production_industrielle", :id => false, :force => true do |t|
    t.integer "year_sk",                                                       :null => false
    t.integer "prod_sk",                                                       :null => false
    t.integer "product_sk",                                                    :null => false
    t.decimal "volume_tonnes", :precision => 10, :scale => 3, :default => 0.0, :null => false
  end

  add_index "fact_production_industrielle", ["prod_sk"], :name => "fact_production_industrielle_I2"
  add_index "fact_production_industrielle", ["product_sk"], :name => "fact_production_industrielle_I3"
  add_index "fact_production_industrielle", ["year_sk"], :name => "fact_production_industrielle_I"

  create_table "fact_ventes_volume_sucre_producteurs_civ", :id => false, :force => true do |t|
    t.integer "year_sk",                      :null => false
    t.integer "volume_tonnes", :default => 0, :null => false
    t.integer "trans_sk",                     :null => false
    t.integer "product_sk",                   :null => false
    t.integer "prod_sk",                      :null => false
  end

  add_index "fact_ventes_volume_sucre_producteurs_civ", ["prod_sk"], :name => "fact_ventes_volume_sucre_producteurs_civ_I2"
  add_index "fact_ventes_volume_sucre_producteurs_civ", ["product_sk"], :name => "fact_ventes_volume_sucre_producteurs_civ_I3"
  add_index "fact_ventes_volume_sucre_producteurs_civ", ["trans_sk"], :name => "fact_ventes_volume_sucre_producteurs_civ_I4"
  add_index "fact_ventes_volume_sucre_producteurs_civ", ["year_sk"], :name => "fact_ventes_volume_sucre_producteurs_civ_I"

  create_table "fact_volume_sucre_international", :id => false, :force => true do |t|
    t.integer "trans_sk"
    t.integer "volume_ktonnes"
    t.integer "year_sk"
    t.integer "ctry_sk",        :null => false
  end

  add_index "fact_volume_sucre_international", ["ctry_sk"], :name => "fact_volume_sucre_international_I2"
  add_index "fact_volume_sucre_international", ["volume_ktonnes"], :name => "fact_volume_sucre_international_I"
  add_index "fact_volume_sucre_international", ["year_sk"], :name => "fact_volume_sucre_international_I3"

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

  create_table "stg_countries", :id => false, :force => true do |t|
    t.integer "version",                                        :null => false
    t.string  "ISO",             :limit => 2,                   :null => false
    t.string  "Pays",            :limit => 64,                  :null => false
    t.string  "ISO3",            :limit => 3,                   :null => false
    t.integer "ISO_Numeric",     :limit => 2
    t.string  "Country",         :limit => 44,                  :null => false
    t.string  "Capital",         :limit => 80
    t.float   "Area_sq_km"
    t.integer "Population",      :limit => 8
    t.string  "Continent",       :limit => 2
    t.string  "tld",             :limit => 3
    t.string  "CurrencyCode",    :limit => 3
    t.string  "CurrencyName",    :limit => 13
    t.string  "Phone",           :limit => 16
    t.string  "Languages"
    t.integer "geonameid",       :limit => 8
    t.string  "neighbours",      :limit => 41
    t.string  "uemoa_ind",       :limit => 1,  :default => "0", :null => false
    t.string  "cedeao_ind",      :limit => 1,  :default => "0", :null => false
    t.string  "eu_27_ind",       :limit => 1,  :default => "0", :null => false
    t.string  "groupe_pays_ind", :limit => 1,  :default => "0", :null => false
  end

  create_table "stg_cycles", :id => false, :force => true do |t|
    t.string  "cycle_code", :limit => 50,                :null => false
    t.string  "cycle_name", :limit => 50,                :null => false
    t.string  "cycle_desc", :limit => 50
    t.integer "version",                  :default => 1, :null => false
  end

  create_table "stg_fact_flux_douane_sucre_civ", :id => false, :force => true do |t|
    t.integer "price_xof",  :limit => 8, :default => 0, :null => false
    t.integer "volume_kg",  :limit => 8, :default => 0, :null => false
    t.integer "trans_sk",                               :null => false
    t.integer "month_sk",                               :null => false
    t.integer "product_sk",                             :null => false
    t.integer "ctry_sk",                                :null => false
  end

  create_table "stg_fact_marche_prix_sucre_civ", :id => false, :force => true do |t|
    t.integer "price_xof",  :default => 0, :null => false
    t.integer "loc_sk",                    :null => false
    t.integer "product_sk",                :null => false
    t.integer "month_sk",                  :null => false
  end

  create_table "stg_fact_production_agricole", :id => false, :force => true do |t|
    t.integer "year_sk",                                                             :null => false
    t.integer "prod_sk",                                                             :null => false
    t.integer "product_sk",                                                          :null => false
    t.decimal "qte_recoltee_tonnes", :precision => 12, :scale => 3, :default => 0.0, :null => false
    t.integer "irr_sk",                                                              :null => false
    t.float   "sup_recoltee_ha",                                    :default => 0.0, :null => false
  end

  create_table "stg_fact_production_campagne_kpi_civ", :id => false, :force => true do |t|
    t.integer "year_sk",                                                    :null => false
    t.integer "prod_sk",                                                    :null => false
    t.date    "date_debut"
    t.date    "date_fin"
    t.integer "jours_calendaire"
    t.integer "jours_roulaison"
    t.decimal "surf_rec_indus_ha",            :precision => 8, :scale => 3
    t.decimal "surf_rec_canvi_ha",            :precision => 8, :scale => 3
    t.decimal "rdt_canne_indus_tonnes_ha",    :precision => 4, :scale => 3
    t.decimal "rdt_canne_canvi_tonnes_ha",    :precision => 4, :scale => 3
    t.decimal "rdt_sucre_combined_tonnes_ha", :precision => 4, :scale => 3
    t.decimal "cannes_pesees_tonnes",         :precision => 6, :scale => 0
    t.decimal "cannes_broyees_tonnes",        :precision => 6, :scale => 0
    t.decimal "richesse_pct",                 :precision => 4, :scale => 2
    t.decimal "rdt_pct",                      :precision => 4, :scale => 2
    t.decimal "sucre_tonnes",                 :precision => 5, :scale => 0
  end

  create_table "stg_fact_production_industrielle", :id => false, :force => true do |t|
    t.integer "year_sk",                                                       :null => false
    t.integer "prod_sk",                                                       :null => false
    t.integer "product_sk",                                                    :null => false
    t.decimal "volume_tonnes", :precision => 10, :scale => 3, :default => 0.0, :null => false
  end

  create_table "stg_fact_ventes_volume_sucre_producteurs_civ", :id => false, :force => true do |t|
    t.integer "year_sk",                      :null => false
    t.integer "volume_tonnes", :default => 0, :null => false
    t.integer "trans_sk",                     :null => false
    t.integer "product_sk",                   :null => false
    t.integer "prod_sk",                      :null => false
  end

  create_table "stg_fact_volume_sucre_international", :id => false, :force => true do |t|
    t.integer "volume_ktonnes", :default => 0, :null => false
    t.integer "year_sk",                       :null => false
    t.integer "trans_sk",                      :null => false
    t.integer "ctry_sk",                       :null => false
  end

  create_table "stg_irrigation", :id => false, :force => true do |t|
    t.string  "irr_code",   :limit => 2,                   :null => false
    t.string  "irr_type",   :limit => 50
    t.string  "irr_statut", :limit => 1,  :default => "I", :null => false
    t.integer "version",                  :default => 1,   :null => false
  end

  create_table "stg_localites", :id => false, :force => true do |t|
    t.string  "loc_code",     :limit => 8
    t.string  "loc_zone",     :limit => 50
    t.string  "loc_district", :limit => 50
    t.string  "loc_region",   :limit => 50
    t.string  "loc_dept",     :limit => 50
    t.string  "loc_ville",    :limit => 50
    t.string  "loc_commune",  :limit => 50
    t.integer "version",                    :default => 1, :null => false
  end

  create_table "stg_producteurs", :id => false, :force => true do |t|
    t.integer "prod_id",                                    :null => false
    t.string  "prod_name",     :limit => 50,                :null => false
    t.string  "prod_uap",      :limit => 50,                :null => false
    t.string  "prod_site",     :limit => 50,                :null => false
    t.string  "prod_district", :limit => 50,                :null => false
    t.string  "prod_region",   :limit => 50,                :null => false
    t.string  "prod_dept",     :limit => 50,                :null => false
    t.string  "prod_ville",    :limit => 50,                :null => false
    t.integer "version",                     :default => 1, :null => false
  end

  create_table "stg_produits", :id => false, :force => true do |t|
    t.integer "product_code"
    t.string  "product_name",     :limit => 80,                :null => false
    t.string  "product_category", :limit => 50,                :null => false
    t.integer "version",                        :default => 1, :null => false
  end

  create_table "stg_transactions", :id => false, :force => true do |t|
    t.string  "trans_code", :limit => 2,                 :null => false
    t.string  "trans_name", :limit => 50,                :null => false
    t.string  "trans_desc", :limit => 50
    t.integer "version",                  :default => 1, :null => false
  end

  create_table "stg_varietes_cannes", :id => false, :force => true do |t|
    t.string  "variete_code", :limit => 25,                :null => false
    t.string  "variete_name", :limit => 50,                :null => false
    t.string  "variete_desc", :limit => 50
    t.integer "version",                    :default => 1, :null => false
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

  create_table "vu_fact_flux_douane_sucre_civ", :id => false, :force => true do |t|
    t.string  "year4",        :limit => 4,                 :null => false
    t.string  "Pays",         :limit => 64,                :null => false
    t.string  "product_name", :limit => 80,                :null => false
    t.string  "trans_name",   :limit => 50,                :null => false
    t.integer "volume_kg",    :limit => 8,  :default => 0, :null => false
    t.integer "price_xof",    :limit => 8,  :default => 0, :null => false
  end

  create_table "vu_fact_marche_prix_sucre_civ", :id => false, :force => true do |t|
    t.string  "year4",        :limit => 4,                 :null => false
    t.string  "month_name",   :limit => 10,                :null => false
    t.string  "loc_ville",    :limit => 50
    t.string  "product_name", :limit => 80,                :null => false
    t.integer "price_xof",                  :default => 0, :null => false
  end

  create_table "vu_fact_production_agricole", :id => false, :force => true do |t|
    t.string  "year4",               :limit => 4,                                                  :null => false
    t.string  "prod_name",           :limit => 50,                                                 :null => false
    t.string  "product_name",        :limit => 80,                                                 :null => false
    t.string  "irr_type",            :limit => 50
    t.decimal "qte_recoltee_tonnes",               :precision => 12, :scale => 3, :default => 0.0, :null => false
    t.float   "sup_recoltee_ha",                                                  :default => 0.0, :null => false
  end

  create_table "vu_fact_production_industrielle", :id => false, :force => true do |t|
    t.string  "year4",         :limit => 4,                                                  :null => false
    t.string  "prod_name",     :limit => 50,                                                 :null => false
    t.string  "product_name",  :limit => 80,                                                 :null => false
    t.decimal "volume_tonnes",               :precision => 10, :scale => 3, :default => 0.0, :null => false
  end

  create_table "vu_fact_ventes_volume_sucre_producteurs_civ", :id => false, :force => true do |t|
    t.string  "year4",         :limit => 4,                 :null => false
    t.string  "prod_name",     :limit => 50,                :null => false
    t.string  "product_name",  :limit => 80,                :null => false
    t.string  "trans_name",    :limit => 50,                :null => false
    t.integer "volume_tonnes",               :default => 0, :null => false
  end

  create_table "vu_fact_volume_sucre_international", :id => false, :force => true do |t|
    t.string  "year4",          :limit => 4,  :null => false
    t.string  "Pays",           :limit => 64, :null => false
    t.string  "trans_name",     :limit => 50, :null => false
    t.integer "volume_ktonnes"
  end

end
