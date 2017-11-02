class CitySerializer < AreaSerializer
  attributes :country

  def country
    object.country.name
  end

end
