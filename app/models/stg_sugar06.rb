class StgSugar06 < ActiveRecord::Base
  set_table_name 'stg_fact_ventes_volume_sucre_producteurs_civ'
  attr_accessible :year_sk, :prod_sk, :product_sk, :trans_sk, :volume_tonnes
end
