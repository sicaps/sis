class StgSugar01 < ActiveRecord::Base
  set_table_name 'stg_fact_flux_douane_sucre_civ'
  attr_accessible :ctry_sk, :product_sk, :month_sk, :trans_sk, :volume_kg, :price_xof
end
