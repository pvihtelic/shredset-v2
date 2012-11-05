class Image < ActiveRecord::Base
  attr_accessible :ski_id, :url
  
  belongs_to :ski

end
