class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :poketype, :pokedex_number, :spot_id, :user_ids
  has_one :spot
end
