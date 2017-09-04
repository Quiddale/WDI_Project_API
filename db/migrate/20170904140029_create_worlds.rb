class CreateWorlds < ActiveRecord::Migration[5.1]
  def change
    create_table :worlds do |t|
      t.string :title
      t.text :image
      
      t.timestamps
    end
  end
end
