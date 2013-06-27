class Sugar06 < ActiveRecord::Base
  set_table_name 'vu_fact_ventes_volume_sucre_producteurs_civ'
  attr_accessible :year4, :prod_name, :product_name, :trans_name, :volume_tonnes
end
