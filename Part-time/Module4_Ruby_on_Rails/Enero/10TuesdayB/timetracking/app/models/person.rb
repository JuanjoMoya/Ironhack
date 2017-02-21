class Person < ApplicationRecord
  has_many :projects, through: :participations
  has_many :participations
end
