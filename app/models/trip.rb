class Trip < ApplicationRecord
  # Areas
  has_many :trip_destinations
  has_many :cities, through: :trip_destinations 
  # Meetings & Users
  has_many :meetings
  has_many :users, through: :meetings 

  validates :title, :description, :trip_status, :trip_type, presence: true
  

end
