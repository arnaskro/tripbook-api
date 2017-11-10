class Trip < ApplicationRecord
  has_many :trip_destinations
  has_many :cities, through: :trip_destinations 

  validates :title, :description, :trip_status, :trip_type, presence: true
  

end
