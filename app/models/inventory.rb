class Inventory < ActiveRecord::Base
  attr_accessible :price, :size_id, :ski_id, :ski_url, :store_id

  belongs_to :ski
  belongs_to :store
  
end
