class CreateJoinTablePokemonsUsers < ActiveRecord::Migration[5.1]
  def change
    create_join_table :pokemons, :users do |t|
      # t.index [:pokemon_id, :user_id]
      # t.index [:user_id, :pokemon_id]
    end
  end
end
