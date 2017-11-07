class City < ApplicationRecord
  include Searchable
  belongs_to :country
  has_many :locals

  validates :name, :country_id, :latitude, :longitude, presence: true
end
