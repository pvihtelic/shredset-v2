class Image < ActiveRecord::Base
  attr_accessible :ski_id, :url

  attr_accessible :ski_id, :url
  
  belongs_to :ski

end
