class DimLocalites < ActiveRecord::Base
  attr_accessible :loc_sk, :loc_zone, :loc_district, :loc_region, :loc_dept, :loc_ville, :effective_date, :expiry_date
  def name
    loc_ville
  end
end
