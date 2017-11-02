class SearchSerializer < AreaSerializer
  attributes :parent_area

  def parent_area
    case type
    when "country"
      return nil
    when "city"
      return object.country.name
    end
  end

end
