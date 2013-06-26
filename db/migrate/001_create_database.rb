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

class CreateDatabase < ActiveRecord::Migration
  def change



    create_table "country", :force => true do |t|
    t.string "name", :limit => 64, :null => false
  end

    create_table "dim_countries", :primary_key => "ctry_sk", :force => true do |t|
    t.integer  "version"
    t.datetime "effective_date"
    t.datetime "expiry_date"
    t.string   "ISO",                :limit => 2
    t.string   "Pays",               :limit => 64
    t.string   "ISO3",               :limit => 3
    t.integer  "ISO_Numeric",        :limit => 8
    t.string   "fips",               :limit => 2
    t.string   "Country",            :limit => 44
    t.string   "Capital",            :limit => 80
    t.float    "Area_sq_km"
    t.integer  "Population",         :limit => 8
    t.string   "Continent",          :limit => 2
    t.string   "tld",                :limit => 3
    t.string   "CurrencyCode",       :limit => 3
    t.string   "CurrencyName",       :limit => 13
    t.string   "Phone",              :limit => 16
    t.string   "Postal_Code_Format", :limit => 55
    t.string   "Postal_Code_Regex",  :limit => 155
    t.string   "Languages"
    t.integer  "geonameid",          :limit => 8
    t.string   "neighbours",         :limit => 41
    t.string   "EquivalentFipsCode", :limit => 2
    t.boolean  "uemoa_ind",                         :default => false
    t.boolean  "cedeao_ind",                        :default => false
    t.boolean  "eu_27_ind",                         :default => false
  end

    add_index "dim_countries", ["ISO"], :name => "idx_dim_countries_load_lookup"
    add_index "dim_countries", ["ctry_sk"], :name => "idx_dim_countries_load_tk"

    create_table "dim_cycles", :primary_key => "cycle_sk", :force => true do |t|
    t.string "cycle_code",     :limit => 50
    t.string "cycle_name",     :limit => 50
    t.string "cycle_desc",     :limit => 50
    t.date   "effective_date"
    t.date   "expiry_date"
  end

    create_table "dim_date", :id => false, :force => true do |t|
    t.text     "date_short",              :limit => 255
    t.text     "date_medium",             :limit => 255
    t.text     "day_abbreviation",        :limit => 255
    t.text     "month_abbreviation",      :limit => 255
    t.text     "month_name",              :limit => 255
    t.text     "quarter_name",            :limit => 255
    t.text     "year_quarter",            :limit => 255
    t.text     "year_month_abbreviation", :limit => 255
    t.text     "year4",                   :limit => 255
    t.text     "week_in_year",            :limit => 255
    t.text     "week_in_month",           :limit => 255
    t.text     "month_number",            :limit => 255
    t.text     "quarter_number",          :limit => 255
    t.text     "year_month_number",       :limit => 255
    t.text     "date_sk",                 :limit => 255
    t.text     "date_long",               :limit => 255
    t.text     "date_full",               :limit => 255
    t.text     "day_name",                :limit => 255
    t.text     "year2",                   :limit => 255
    t.text     "day_in_year",             :limit => 255
    t.text     "is_last_day_in_month",    :limit => 255
    t.text     "is_first_day_in_month",   :limit => 255
    t.text     "is_last_day_in_week",     :limit => 255
    t.text     "is_first_day_in_week",    :limit => 255
    t.text     "day_in_month",            :limit => 255
    t.datetime "date_value"
    t.datetime "effective_date"
    t.datetime "expiry_date"
  end

    create_table "dim_irrigation", :primary_key => "irr_sk", :force => true do |t|
    t.string "irr_code",       :limit => 50
    t.string "irr_type",       :limit => 50
    t.string "irr_statut",     :limit => 50
    t.date   "effective_date"
    t.date   "expiry_date"
  end

    create_table "dim_localites", :primary_key => "loc_sk", :force => true do |t|
    t.string "loc_code",       :limit => 8
    t.string "loc_zone",       :limit => 50
    t.string "loc_district",   :limit => 50
    t.string "loc_region",     :limit => 50
    t.string "loc_dept",       :limit => 50
    t.string "loc_ville",      :limit => 50
    t.string "loc_commune",    :limit => 50
    t.date   "effective_date"
    t.date   "expiry_date"
  end

    create_table "dim_months", :id => false, :force => true do |t|
    t.text     "month_sk",                :limit => 255
    t.text     "date_short",              :limit => 255
    t.text     "date_medium",             :limit => 255
    t.text     "day_abbreviation",        :limit => 255
    t.text     "month_abbreviation",      :limit => 255
    t.text     "month_name",              :limit => 255
    t.text     "quarter_name",            :limit => 255
    t.text     "year_quarter",            :limit => 255
    t.text     "year_month_abbreviation", :limit => 255
    t.text     "year4",                   :limit => 255
    t.text     "week_in_year",            :limit => 255
    t.text     "week_in_month",           :limit => 255
    t.text     "month_number",            :limit => 255
    t.text     "quarter_number",          :limit => 255
    t.text     "year_month_number",       :limit => 255
    t.text     "date_long",               :limit => 255
    t.text     "date_full",               :limit => 255
    t.text     "day_name",                :limit => 255
    t.text     "year2",                   :limit => 255
    t.text     "day_in_year",             :limit => 255
    t.text     "day_in_month",            :limit => 255
    t.datetime "date_value"
    t.datetime "effective_date"
    t.datetime "expiry_date"
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
    t.string  "product_name",     :limit => 80
    t.string  "product_category", :limit => 50
    t.date    "effective_date"
    t.date    "expiry_date"
  end

    create_table "dim_transactions", :primary_key => "trans_sk", :force => true do |t|
    t.string "trans_code",     :limit => 50
    t.string "trans_name",     :limit => 50
    t.string "trans_desc",     :limit => 50
    t.date   "effective_date"
    t.date   "expiry_date"
  end

    create_table "dim_varietes_cannes", :primary_key => "variete_sk", :force => true do |t|
    t.string "variete_code",   :limit => 50
    t.string "variete_name",   :limit => 50
    t.string "variete_desc",   :limit => 50
    t.date   "effective_date"
    t.date   "expiry_date"
  end

    create_table "dim_years", :id => false, :force => true do |t|
    t.text     "year_sk",        :limit => 255
    t.text     "date_short",     :limit => 255
    t.text     "year4",          :limit => 255
    t.text     "date_long",      :limit => 255
    t.text     "date_full",      :limit => 255
    t.text     "day_name",       :limit => 255
    t.text     "year2",          :limit => 255
    t.datetime "date_value"
    t.datetime "effective_date"
    t.datetime "expiry_date"
  end

    create_table "fact_donnee_inter_temp", :id => false, :force => true do |t|
    t.integer "year_sk"
    t.integer "trans_sk"
    t.integer "volume_ktonnes"
    t.integer "ctry_sk",        :limit => 8
  end

    create_table "fact_flux_douane_sucre_civ", :id => false, :force => true do |t|
    t.float   "price_xof"
    t.float   "volume_kg"
    t.integer "trans_sk"
    t.integer "month_sk"
    t.integer "product_sk"
    t.integer "ctry_sk",    :limit => 8
  end

  create_table "fact_flux_douane_sucre_civ_prep", :id => false, :force => true do |t|
    t.float   "price_xof"
    t.float   "volume_kg"
    t.integer "trans_sk"
    t.integer "date_sk"
    t.integer "product_sk"
    t.integer "ctry_sk",    :limit => 8
  end

  create_table "fact_marche_prix_sucre_civ", :id => false, :force => true do |t|
    t.integer "price_xof"
    t.integer "loc_sk"
    t.integer "product_sk"
    t.integer "month_sk"
  end

  create_table "fact_ventes_volume_sucre_producteurs_civ", :id => false, :force => true do |t|
    t.string  "year_sk",       :limit => 80, :null => false
    t.integer "volume_tonnes"
    t.integer "trans_sk"
    t.string  "product_sk",    :limit => 2
    t.integer "prod_sk"
  end

  create_table "fact_volume_sucre_inter_phase1", :id => false, :force => true do |t|
    t.text    "Country",  :limit => 255
    t.float   "volume"
    t.text    "date_sk",  :limit => 255
    t.integer "trans_sk"
  end

  create_table "fact_volume_sucre_international", :id => false, :force => true do |t|
    t.float   "volume_ktonnes"
    t.string  "year_sk",        :limit => 85
    t.integer "trans_sk"
    t.integer "ctry_sk",        :limit => 8
  end

  create_table "ferke1_cleansed", :id => false, :force => true do |t|
    t.string  "GF",                 :limit => 85
    t.string  "Ferme",              :limit => 85
    t.string  "Parc",               :limit => 85
    t.string  "cycle",              :limit => 85
    t.string  "variete",            :limit => 85
    t.string  "Surface",            :limit => 85
    t.string  "irrigation",         :limit => 85
    t.string  "production_estimee", :limit => 85
    t.string  "production",         :limit => 85
    t.string  "rendement",          :limit => 85
    t.string  "purete",             :limit => 85
    t.string  "richesse",           :limit => 85
    t.string  "pol_pct",            :limit => 85
    t.string  "tonne_sucre_ha",     :limit => 85
    t.string  "year",               :limit => 85
    t.string  "prod_name",          :limit => 85
    t.string  "prod_uap",           :limit => 85
    t.string  "prod_site",          :limit => 85
    t.integer "prod_sk"
    t.integer "irr_sk"
  end

  create_table "ferke1_extract_transformation_allyears", :id => false, :force => true do |t|
    t.text "GF",                 :limit => 255
    t.text "Ferme",              :limit => 255
    t.text "Parc",               :limit => 255
    t.text "cycle",              :limit => 255
    t.text "variete",            :limit => 255
    t.text "tonne_sucre_ha",     :limit => 255
    t.text "year",               :limit => 255
    t.text "prod_name",          :limit => 255
    t.text "prod_uap",           :limit => 255
    t.text "prod_site",          :limit => 255
    t.text "production_canne",   :limit => 255
    t.text "rendement_canne_ha", :limit => 255
    t.text "purete_pct",         :limit => 255
    t.text "richesse_pct",       :limit => 255
    t.text "irrigation_methode", :limit => 255
    t.text "surface_recoltee",   :limit => 255
  end

  create_table "ferke2_cleansed", :id => false, :force => true do |t|
    t.string  "Ferme",          :limit => 85
    t.string  "Parc",           :limit => 85
    t.string  "GF",             :limit => 85
    t.string  "surface",        :limit => 85
    t.string  "Variete",        :limit => 85
    t.string  "cycle",          :limit => 85
    t.string  "production",     :limit => 85
    t.string  "rendement",      :limit => 85
    t.string  "purete",         :limit => 85
    t.string  "pol_pct",        :limit => 85
    t.string  "tonne_sucre_ha", :limit => 85
    t.string  "irrigation",     :limit => 85
    t.string  "year",           :limit => 85
    t.string  "prod_name",      :limit => 85
    t.string  "prod_uap",       :limit => 85
    t.string  "prod_site",      :limit => 85
    t.integer "prod_sk"
    t.integer "irr_sk"
  end

  create_table "ferke2_extract_transformation_allyears", :id => false, :force => true do |t|
    t.text "Ferme",              :limit => 255
    t.text "Parc",               :limit => 255
    t.text "GF",                 :limit => 255
    t.text "Variete",            :limit => 255
    t.text "cycle",              :limit => 255
    t.text "tonne_sucre_ha",     :limit => 255
    t.text "year",               :limit => 255
    t.text "prod_name",          :limit => 255
    t.text "prod_uap",           :limit => 255
    t.text "prod_site",          :limit => 255
    t.text "surface_recoltee",   :limit => 255
    t.text "production_canne",   :limit => 255
    t.text "rendement_canne_ha", :limit => 255
    t.text "purete_pct",         :limit => 255
    t.text "richesse_pct",       :limit => 255
    t.text "irrigation_methode", :limit => 255
  end

  create_table "stg_countries", :id => false, :force => true do |t|
    t.string  "ISO",                :limit => 2
    t.string  "ISO3",               :limit => 3
    t.integer "ISO_Numeric",        :limit => 8
    t.string  "fips",               :limit => 2
    t.string  "Country",            :limit => 44
    t.string  "Capital",            :limit => 80
    t.float   "Area(in_sq_km)"
    t.integer "Population",         :limit => 8
    t.string  "Continent",          :limit => 2
    t.string  "tld",                :limit => 3
    t.string  "CurrencyCode",       :limit => 3
    t.string  "CurrencyName",       :limit => 13
    t.string  "Phone",              :limit => 16
    t.string  "Postal_Code_Format", :limit => 55
    t.string  "Postal_Code_Regex",  :limit => 155
    t.string  "Languages"
    t.integer "geonameid",          :limit => 8
    t.string  "neighbours",         :limit => 41
    t.string  "EquivalentFipsCode", :limit => 2
  end

  create_table "stg_countries_merged", :id => false, :force => true do |t|
    t.string  "Pays",               :limit => 64
    t.string  "ISO",                :limit => 2
    t.string  "ISO3",               :limit => 3
    t.integer "ISO_Numeric",        :limit => 8
    t.string  "fips",               :limit => 2
    t.string  "Country",            :limit => 44
    t.string  "Capital",            :limit => 80
    t.float   "Area(in_sq_km)"
    t.integer "Population",         :limit => 8
    t.string  "Continent",          :limit => 2
    t.string  "tld",                :limit => 3
    t.string  "CurrencyCode",       :limit => 3
    t.string  "CurrencyName",       :limit => 13
    t.string  "Phone",              :limit => 16
    t.string  "Postal_Code_Format", :limit => 55
    t.string  "Postal_Code_Regex",  :limit => 155
    t.string  "Languages"
    t.integer "geonameid",          :limit => 8
    t.string  "neighbours",         :limit => 41
    t.string  "EquivalentFipsCode", :limit => 2
  end

  create_table "stg_cycles", :id => false, :force => true do |t|
    t.string "cycle_code", :limit => 15
    t.string "cycle_name", :limit => 15
    t.string "cycle_desc", :limit => 80
  end

  add_index "stg_cycles", ["cycle_code"], :name => "idx_stg_cycles_lookup"

  create_table "stg_fact_volume_sucre_inter", :id => false, :force => true do |t|
    t.integer "Annee"
    t.string  "name",             :limit => 64
    t.float   "volume"
    t.text    "TRANSACTION_type", :limit => 255
  end

  create_table "stg_irrigation", :id => false, :force => true do |t|
    t.string "irr_code",   :limit => 50
    t.string "irr_type",   :limit => 50
    t.string "irr_statut", :limit => 50
  end

  create_table "stg_localites", :id => false, :force => true do |t|
    t.string "loc_code",     :limit => 8
    t.string "loc_zone",     :limit => 50
    t.string "loc_district", :limit => 50
    t.string "loc_region",   :limit => 50
    t.string "loc_dept",     :limit => 50
    t.string "loc_ville",    :limit => 50
    t.string "loc_commune",  :limit => 50
  end

  create_table "stg_producteurs", :id => false, :force => true do |t|
    t.integer "prod_id"
    t.text    "prod_name",     :limit => 255
    t.text    "prod_uap",      :limit => 255
    t.text    "prod_site",     :limit => 255
    t.text    "prod_district", :limit => 255
    t.text    "prod_region",   :limit => 255
    t.text    "prod_dept",     :limit => 255
    t.text    "prod_ville",    :limit => 255
  end

  create_table "stg_produits", :id => false, :force => true do |t|
    t.integer "product_code"
    t.string  "product_name",     :limit => 80
    t.string  "product_category", :limit => 50
  end

  create_table "stg_transactions", :id => false, :force => true do |t|
    t.string "trans_code", :limit => 50
    t.string "trans_name", :limit => 50
    t.string "trans_desc", :limit => 50
  end

  create_table "stg_varietes_cannes", :id => false, :force => true do |t|
    t.text "variete_code", :limit => 255
    t.text "variete_name", :limit => 255
    t.text "variete_desc", :limit => 255
  end

  create_table "sucre_exportations", :id => false, :force => true do |t|
    t.text  "ANNEE",             :limit => 255
    t.text  "CODE SH",           :limit => 255
    t.text  "LIBELLES PRODUITS", :limit => 255
    t.text  "PAYS DE DEST",      :limit => 255
    t.float "VALEUR FOB"
    t.float "POIDS"
  end

  create_table "sucre_importations", :id => false, :force => true do |t|
    t.text  "ANNEE",             :limit => 255
    t.text  "CODE SH",           :limit => 255
    t.text  "LIBELLES PRODUITS", :limit => 255
    t.text  "PAYS ORIGINE",      :limit => 255
    t.float "VALEUR"
    t.float "POIDS"
  end

  end
end
