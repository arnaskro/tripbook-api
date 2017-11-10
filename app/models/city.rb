class City < ApplicationRecord
  include Searchable
  belongs_to :country
  has_many :locals
  # Trips
  has_many :trip_destinations
  has_many :trips, through: :trip_destinations

  validates :name, :country_id, :latitude, :longitude, presence: true
end
