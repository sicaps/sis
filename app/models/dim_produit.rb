class DimProduit < ActiveRecord::Base
  attr_accessible :product_sk, :product_code, :product_name, :product_category, :effective_date, :expiry_date
  self.primary_key ='product_sk'

  def name
    product_name
  end
end
