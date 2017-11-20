class Booking < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  belongs_to :local, required: false
  validates :trip, :user, presence: true

  # Status codes
  # 0 - Cancelled
  # 1 - Pending
  # 2 - Accepted
end
