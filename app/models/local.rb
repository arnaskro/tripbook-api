class Local < ApplicationRecord
  belongs_to :user, required: true
  has_one :country, through: :user, required: true
  has_one :city, through: :user, required: true

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  def self.search(query, quantity = nil, fields = ["users.name", "users.lastname", "users.email"])
    list = self.joins(:user).where(fields.map{ |field| "#{field} ILIKE :query" }.join(" OR "), query: "%#{query}%")
    return quantity.nil? ? list : list.take(quantity)
  end

end
