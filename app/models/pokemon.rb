class Pokemon < ApplicationRecord
  belongs_to :spot, optional: true
  has_and_belongs_to_many :users
end
