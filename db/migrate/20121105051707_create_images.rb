class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :url
      t.integer :ski_id

      t.timestamps
    end
  end
end
