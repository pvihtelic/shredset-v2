class AddColumnSkiIDtoSpec < ActiveRecord::Migration
  def change
  	add_column :specs, :ski_id, :integer
  end
end
