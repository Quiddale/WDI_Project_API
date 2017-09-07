class CreateSpots < ActiveRecord::Migration[5.1]
  def change
    create_table :spots do |t|
      t.references :world, foreign_key: true
      t.integer :top
      t.integer :left
      t.integer :width
      t.integer :height
      
      t.timestamps
    end
  end
end
