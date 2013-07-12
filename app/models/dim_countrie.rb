class DimCountrie < ActiveRecord::Base
  attr_accessible :ctry_sk, :pays, :Country
  set_primary_key(:ctry_sk)

  def name
   pays
  end

end
