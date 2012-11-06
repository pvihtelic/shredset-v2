Image.destroy_all
Inventory.destroy_all
Ski.destroy_all
Spec.destroy_all
Store.destroy_all	

images = [
  { :url => "http://www.backcountry.com/images/items/large/FTS/FTS0077/ONECOL.jpg" },
  { :url => "http://www.evo.com/imgp/750/55914/305635/4frnt-crj-skis-2013-front.jpg" }
  				]
  

inventories = [
  { :price => 679.99, :size_available => 172, :ski_url => "http://www.evo.com/skis/4frnt-crj.aspx#image=55914/305635/4frnt-crj-skis-2013-front.jpg"},
  { :price => 679.99, :size_available => 180, :ski_url => "http://www.backcountry.com/4frnt-skis-crj-ski"},
  { :price => 679.99, :size_available => 180, :ski_url => "http://www.evo.com/skis/4frnt-crj.aspx#image=55914/305635/4frnt-crj-skis-2013-front.jpg"},
  { :price => 679.99, :size_available => 188, :ski_url => "http://www.backcountry.com/4frnt-skis-crj-ski"}
]

skis = [
  { :ability_level => "Advanced-Expert", :brand => "4FRNT", :description => "The 4FRNT CRJ Skis are versatile, playful boards with powder ski dimensions that let let your imagination rule how you turn and use the terrain, rather than someone else's notion of correct skiing. Moving the contact points toward the center of the ski makes the CRJ pivot on demand and the wide waist dimensions will float you in the deepest fluff. Still in the 4FRNT line and still ruling after 3 years, the CRJ is a crowd favorite with creative freeskiers.", :gender => "Mens", :model_year => 2013, :name => "CRJ", :rocker_type => "Rocker", :ski_type => "All Mountain"}
]

specs = [
  { :length => 172, :tail_width => 120, :tip_width => 122, :turning_radius => 26.0, :waist_width => 112, :weight => 2100.0},
  { :length => 180, :tail_width => 124, :tip_width => 126, :turning_radius => 27.0, :waist_width => 116, :weight => 2250.0},
  { :length => 188, :tail_width => 128, :tip_width => 130, :turning_radius => 28.0, :waist_width => 118, :weight => 2400.0}
]

stores = [
	{ :name => "evo.com", :store_url => "http://www.evo.com/"},
	{ :name => "backcountry.com", :store_url => "http://www.backcountry.com/"}
]

Ski.create skis
																																						
images.each do |image|
	Ski.all.each do |ski_object|
		@ski_id = ski_object.id
	end

	Image.create :url => image[:url], :ski_id => @ski_id

end

stores.each do |store|
		
	Ski.all.each do |ski_object|
		@ski_id = ski_object.id
	end

	Inventory.all.each do |inventory_object|
		@inventory_id = inventory_object.id
	end

	Store.create :name => store[:name], :store_url => store[:store_url], :ski_id => @ski_id, :inventory_id => @inventory_id
	
end

inventories.each do |inventory|
		
	Ski.all.each do |ski_object|
		@ski_id = ski_object.id
	end

	Store.all.each do |store_object|
		@store_id = store_object.id
	end

	Inventory.create :price => inventory[:price], :size_available => inventory[:size_available], :ski_url => inventory[:ski_url], :ski_id => @ski_id, :store_id => @store_id
			
end

specs.each do |spec|
	Ski.all.each do |ski_object|
		@ski_id = ski_object.id
	end

	Spec.create :length => spec[:length], :tip_width => spec[:tip_width], :turning_radius => spec[:turning_radius], :waist_width => spec[:waist_width], :weight => spec[:weight],:ski_id => @ski_id

end







