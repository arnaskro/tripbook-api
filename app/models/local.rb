class Local < ApplicationRecord
  include Reviewable
  belongs_to :user, required: true
  belongs_to :city, required: true
  has_one :country, through: :city
  has_many :trips
  has_many :bookings, through: :trips

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  def self.search(query, quantity = nil, fields = ["users.name", "users.lastname", "users.email"])
    list = self.joins(:user).where(fields.map{ |field| "#{field} ILIKE :query" }.join(" OR "), query: "%#{query}%")
    return quantity.nil? ? list : list.take(quantity)
  end

end
