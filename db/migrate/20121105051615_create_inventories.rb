class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :store_id
      t.integer :ski_id
      t.integer :size_id
      t.string :ski_url
      t.decimal :price

      t.timestamps
    end
  end
end
