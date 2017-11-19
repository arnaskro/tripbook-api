class V1::AreasController < ApiController

  def search
    # Define the maximum size of the response list
    amount_of_areas_left_to_get = params[:per_page] || 20

    case params[:only]
    when "cities"
      areas = City.search(params[:query], amount_of_areas_left_to_get)
    when "countries"
      areas = Country.search(params[:query], amount_of_areas_left_to_get)
    else
      # Find countries
      areas = Country.search(params[:query], amount_of_areas_left_to_get)
    
      # Define how much more cities do we need to get
      amount_of_areas_left_to_get -= areas.size
      
      # Check if we need to get cities
      areas += City.search(params[:query], amount_of_areas_left_to_get) if amount_of_areas_left_to_get > 0
    end

    render json: ActiveModelSerializers::SerializableResource.new(areas, each_serializer: SearchSerializer).to_json
  end

  def get
    case params[:type].downcase
    when 'country'
      country = Country.where(id: params[:id]).first
      if !country.nil?
        render json: country
      else
        render json: {}, status: :not_found
      end
    when 'city'
      city = City.where(id: params[:id]).first
      if !city.nil?
        render json: city
      else
        render json: {}, status: :not_found
      end
    else
      render json: {}, status: :not_found
    end
  end

end
