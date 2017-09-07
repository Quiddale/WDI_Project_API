class AddSpotIdToPokemon < ActiveRecord::Migration[5.1]
  def change
    add_column :pokemons, :spot_id, :integer
  end
end
