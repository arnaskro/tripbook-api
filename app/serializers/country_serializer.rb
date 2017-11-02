class CountrySerializer < AreaSerializer
  attribute :cities

  def cities
    object.cities.pluck(:id)
  end
end
