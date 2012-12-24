class Product < ActiveRecord::Base
  attr_accessible :name

  has_many :sales
  has_many :stores,  :through => :sales

  def to_s
  	self.name
  end

  def self.produtos_novos(store)
  	sql = "SELECT * FROM products p1 WHERE p1.id NOT IN (SELECT a.id FROM (SELECT p2.id,s1.store_id FROM products p2 INNER JOIN sales s1 ON p2.id = s1.product_id WHERE store_id=1) a)"
  	Product.connection.select_all(sql)
  	#Product.all.collect { |produto| produto unless store.products.include?(produto) }.compact!
  end
end
