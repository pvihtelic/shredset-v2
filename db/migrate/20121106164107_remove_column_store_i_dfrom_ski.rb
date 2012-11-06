class RemoveColumnStoreIDfromSki < ActiveRecord::Migration
  def change
  	remove_column :skis, :store_id
  end
end
