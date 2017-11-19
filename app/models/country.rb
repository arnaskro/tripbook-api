class Country < ApplicationRecord
  include Searchable
  has_many :cities
  has_many :locals, through: :cities

  validates :name, presence: true
  validates :key, presence: true
end
