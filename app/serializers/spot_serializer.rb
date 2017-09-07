class SpotSerializer < ActiveModel::Serializer
  attributes :id, :top, :left, :width, :height, :world, :pokemon
  has_one :world
  has_one :pokemon
end
