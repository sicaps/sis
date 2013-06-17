class StgProducteur < ActiveRecord::Base
  attr_accessible :prod_id, :prod_name, :prod_uap, :prod_site, :prod_district, :prod_region, :prod_dept, :prod_ville
end
