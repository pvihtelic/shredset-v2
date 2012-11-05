class Inventory < ActiveRecord::Base
  attr_accessible :price, :size_id, :ski_id, :ski_url, :store_id
end
