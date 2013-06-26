class Sugar05 < ActiveRecord::Base
  set_table_name 'fact_production_industrielle'
  attr_accessible :year_sk, :prod_sk, :product_sk, :volume_tonnes
end
