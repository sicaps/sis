class DimIrrigation < ActiveRecord::Base
  # attr_accessible :title, :body
  set_table_name 'dim_irrigation'

  def name
    irr_type
  end
end
