class Sandwich < ApplicationRecord
  has_many :reciepes
  has_many :ingredients, through: :reciepes
end
