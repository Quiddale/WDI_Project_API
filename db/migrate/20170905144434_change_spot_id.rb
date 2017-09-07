class ChangeSpotId < ActiveRecord::Migration[5.1]
  def change
    change_column :pokemons, :spot_id, :integer, :default => 0
  end
end
