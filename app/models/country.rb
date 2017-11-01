class Country < ApplicationRecord
  has_many :cities
  belongs_to :capital_city_id, class_name: 'City'
end
