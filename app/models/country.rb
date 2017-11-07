class Country < ApplicationRecord
  include Searchable
  has_many :cities
  has_many :locals

  validates :name, presence: true
  validates :key, presence: true
end
