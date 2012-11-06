class AddColumnInventoryIDtoStore < ActiveRecord::Migration
  def change
  	add_column :stores, :inventory_id, :integer
  end
end
