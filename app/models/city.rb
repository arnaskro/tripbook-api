class City < ApplicationRecord
  belongs_to :country

  validates :name, :country_id, :latitude, :longitude, presence: true
end
