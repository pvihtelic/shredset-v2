class CreateSkis < ActiveRecord::Migration
  def change
    create_table :skis do |t|
      t.string :ability_level
      t.string :brand
      t.text :description
      t.string :gender
      t.integer :model_year
      t.string :name
      t.string :rocker_type
      t.string :ski_type
      t.integer :store_id

      t.timestamps
    end
  end
end
