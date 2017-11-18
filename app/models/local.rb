class Local < ApplicationRecord
  belongs_to :user, required: true
  belongs_to :city, required: true
  # Reviews
  has_many :reviews, as: :object
  has_one :country, through: :city

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  def self.search(query, quantity = nil, fields = ["users.name", "users.lastname", "users.email"])
    list = self.joins(:user).where(fields.map{ |field| "#{field} ILIKE :query" }.join(" OR "), query: "%#{query}%")
    return quantity.nil? ? list : list.take(quantity)
  end

  def review_count
    return reviews.size
  end

  def rating
    return (reviews.pluck(:stars).reduce{ |a, b| a.to_f + b.to_f } / reviews.size).round(2)
  end

end
