class Sugar02 < ActiveRecord::Base
  set_table_name 'fact_marche_prix_sucre_civ'
  attr_accessible :price_xof, :loc_sk, :product_sk, :month_sk
end
