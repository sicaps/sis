class DimProducteur < ActiveRecord::Base
  attr_accessible :prod_sk, :prod_id, :prod_name, :prod_uap, :prod_site, :prod_district, :prod_region, :prod_dept, :prod_ville
  self.primary_key ='prod_sk'
end
