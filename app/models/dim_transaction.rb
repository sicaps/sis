class DimTransaction < ActiveRecord::Base
  # attr_accessible :title, :body

  def name
    trans_name
  end
end
