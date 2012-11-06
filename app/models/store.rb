class Store < ActiveRecord::Base
  attr_accessible :name, :ski_id, :store_url, :inventory_id

  has_many :inventories
  
end
