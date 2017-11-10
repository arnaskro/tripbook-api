class Meeting < ApplicationRecord
  belongs_to :trip
  belongs_to :user
  has_one :local, through: :trip

  validates :trip, :user, presence: true
end
