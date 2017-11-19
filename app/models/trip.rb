class Trip < ApplicationRecord
  # User
  belongs_to :user
  has_one :local, through: :user
  # Areas
  has_many :trip_destinations
  has_one :city
  has_one :country, through: :city 
  # bookings & Users
  has_many :bookings
  has_many :users, through: :bookings
  # Reviews
  has_many :reviews, as: :object

  validates :user, :title, :description, :trip_status, :trip_type, presence: true

  ####### Trip types
  # 0 - Trip request (default)
  # 1 - Trip offer

end
