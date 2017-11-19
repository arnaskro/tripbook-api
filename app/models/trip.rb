class Trip < ApplicationRecord
  belongs_to :user
  belongs_to :local
  belongs_to :city
  
  has_one :city
  has_one :country, through: :city 
  has_many :bookings
  has_many :users, through: :bookings
  has_many :reviews, as: :object

  validates :user, :title, :description, :trip_status, :trip_type, presence: true

  ####### Trip types
  # 0 - Trip request (default)
  # 1 - Trip offer

end
