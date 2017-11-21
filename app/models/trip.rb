class Trip < ApplicationRecord
  include Reviewable
  belongs_to :user
  belongs_to :city, required: false
  
  has_one :local, through: :user
  has_one :country, through: :city 
  has_many :bookings
  has_many :users, through: :bookings

  validates :user, :title, :description, :trip_type, presence: true

  scope :most_popular, -> { 
    joins(:bookings)
    .group("trips.id")
    .order('count(bookings.id) DESC NULLS LAST')
  }

  ####### Trip types
  # 0 - Private Trip request (default)
  # 1 - Public Trip request 
  # 2 - Trip offer 

end
