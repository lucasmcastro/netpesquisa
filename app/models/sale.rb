class Sale < ActiveRecord::Base
  belongs_to :store
  belongs_to :product
  
  attr_accessible :product_id
end
