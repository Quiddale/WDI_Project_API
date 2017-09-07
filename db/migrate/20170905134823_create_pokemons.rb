class CreatePokemons < ActiveRecord::Migration[5.1]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.text :image
      t.string :poketype
      t.integer :pokedex_number

      t.timestamps
    end
  end
end
