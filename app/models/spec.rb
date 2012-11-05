class Spec < ActiveRecord::Base
  attr_accessible :length, :tail_width, :tip_width, :turing_radius, :waist_width, :weight

  belongs_to :ski

end
