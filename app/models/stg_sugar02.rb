class StgSugar02 < ActiveRecord::Base
  set_table_name 'stg_fact_marche_prix_sucre_civ'
  attr_accessible :price_xof, :loc_sk, :product_sk, :month_sk
end
