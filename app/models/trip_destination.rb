class TripDestination < ApplicationRecord
  belongs_to :trip
  belongs_to :city

  validates :trip, :city, presence: true
end
