class ChangeSizeColumnOnInventory < ActiveRecord::Migration
  def change
    rename_column :inventories, :size_id, :size_available
  end
end
