class WorldSerializer < ActiveModel::Serializer
  attributes :id, :title, :image

  has_many :spots
end
