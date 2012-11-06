class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :specs, :turing_radius, :turning_radius
  end
end
