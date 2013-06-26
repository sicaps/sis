class StgSugar03 < ActiveRecord::Base
  set_table_name 'stg_fact_production_agricole'
  attr_accessible :year_sk, :prod_sk, :product_sk, :qte_recoltee_tonnes, :irr_sk, :sup_recoltee_ha
end
