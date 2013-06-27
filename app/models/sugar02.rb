class Sugar02 < ActiveRecord::Base
  set_table_name 'vu_fact_marche_prix_sucre_civ'
  attr_accessible :year4, :month_name, :loc_ville, :product_name, :price_xof
end
