class Ingredient < ApplicationRecord
  has_many :reciepes
  has_many :sandwiches, through: :reciepes
end
