class Store < ActiveRecord::Base
  attr_accessible :name

  has_many :sales
  has_many :products, :through => :sales

  def to_s
  	self.name
  end
end
