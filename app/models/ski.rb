class Ski < ActiveRecord::Base
  attr_accessible :ability_level, :brand, :description, :gender, :model_year, :name, :rocker_type, :ski_type, :store_id

  has_many :images
  has_many :specs
  has_many :inventories
  
end
