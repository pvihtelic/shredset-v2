class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :ski_id
      t.string :store_url

      t.timestamps
    end
  end
end
