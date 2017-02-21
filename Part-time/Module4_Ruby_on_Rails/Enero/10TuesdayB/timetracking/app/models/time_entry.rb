class TimeEntry < ApplicationRecord
  belongs_to :project

  validates :date, presence: true
  validates :hours, :minutes, numericality: true
end
