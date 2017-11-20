class Local < ApplicationRecord
  belongs_to :user, required: true
  belongs_to :city, required: true
  # Reviews
  has_many :reviews, as: :object
  has_one :country, through: :city
  has_many :trips
  has_many :bookings, through: :trips

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  def self.search(query, quantity = nil, fields = ["users.name", "users.lastname", "users.email"])
    list = self.joins(:user).where(fields.map{ |field| "#{field} ILIKE :query" }.join(" OR "), query: "%#{query}%")
    return quantity.nil? ? list : list.take(quantity)
  end

  def get_review_count
    return reviews.size
  end

  def get_rating
    if get_review_count > 0
      # the sum of all stars form all reviews
      sum_of_all_stars = reviews.pluck(:stars).reduce{ |a, b| a.to_f + b.to_f }
      return (sum_of_all_stars / get_review_count).round(2)
    else
      return 0
    end
  end

end
