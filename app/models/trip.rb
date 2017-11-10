class Trip < ApplicationRecord
  # User
  belongs_to :user
  has_one :local, through: :user
  # Areas
  has_many :trip_destinations
  has_many :cities, through: :trip_destinations 
  has_many :countries, through: :cities 
  # Meetings & Users
  has_many :meetings
  has_many :users, through: :meetings


  validates :user, :title, :description, :trip_status, :trip_type, presence: true

end
