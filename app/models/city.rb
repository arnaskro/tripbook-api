class City < ApplicationRecord
  include Searchable
  belongs_to :country
  has_many :locals
  has_many :trips
  has_many :reviews
  
  validates :name, :country_id, :latitude, :longitude, presence: true
end
