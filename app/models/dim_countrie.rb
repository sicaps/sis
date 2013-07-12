class DimCountrie < ActiveRecord::Base
  attr_accessible :ctry_sk, :Pays, :Capital
  set_primary_key(:ctry_sk)

  def name
   ctry_sk
  end

end
