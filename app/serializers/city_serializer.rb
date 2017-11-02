class CitySerializer < AreaSerializer
  attributes :country

  def country
    AreaSerializer.new(object.country)
  end

end
