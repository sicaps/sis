class Sugar < ActiveRecord::Base
  set_table_name 'fact_volume_sucre_international'
  attr_accessible :year_sk, :ctry_sk, :trans_sk, :volume_ktonnes
end
