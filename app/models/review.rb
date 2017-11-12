class Review < ApplicationRecord
  belongs_to :user
  belongs_to :object, polymorphic: true

  validates :text, length: { mininum: 5, maximum: 500 }
  validates :stars, length: { in: 1..5 }
end
