class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
      t.integer :length
      t.decimal :turing_radius
      t.integer :tip_width
      t.integer :waist_width
      t.integer :tail_width
      t.decimal :weight

      t.timestamps
    end
  end
end
