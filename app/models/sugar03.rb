class Sugar03 < ActiveRecord::Base
  set_table_name 'vu_fact_production_agricole'
  attr_accessible :year4, :prod_name, :product_name, :irr_type, :qte_recoltee_tonnes, :sup_recoltee_ha
end
