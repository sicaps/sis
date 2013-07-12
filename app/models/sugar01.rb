class Sugar01 < ActiveRecord::Base
  set_table_name 'vu_fact_flux_douane_sucre_civ'
  attr_accessible :year4, :Pays, :product_name, :trans_name, :volume_kg, :price_xof

end