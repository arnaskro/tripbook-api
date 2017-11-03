class City < ApplicationRecord
  include Searchable
  belongs_to :country
  has_many :users

  validates :name, :country_id, :latitude, :longitude, presence: true
end
