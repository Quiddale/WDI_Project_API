class Spot < ApplicationRecord
  belongs_to :world
  has_one :pokemon
end
