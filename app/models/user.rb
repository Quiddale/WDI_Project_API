class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  has_and_belongs_to_many :pokemons
end
