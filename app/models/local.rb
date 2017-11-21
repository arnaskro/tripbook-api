class Local < ApplicationRecord
  include Reviewable
  belongs_to :user, required: true
  belongs_to :city, required: true
  has_one :country, through: :city
  has_many :trips, through: :user
  has_many :bookings, through: :trips

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }
  scope :most_popular, -> { 
    joins(:bookings)
    .group("locals.id")
    .where('trips.trip_type = 1 OR trips.trip_type = 2')
    .order('count(bookings.id) DESC NULLS LAST')
  }

  def self.search(query, quantity = nil, fields = ["users.name", "users.lastname", "users.email"])
    list = self.joins(:user).where(fields.map{ |field| "#{field} ILIKE :query" }.join(" OR "), query: "%#{query}%")
    return quantity.nil? ? list : list.take(quantity)
  end

end
