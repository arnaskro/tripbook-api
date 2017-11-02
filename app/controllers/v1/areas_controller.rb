class V1::AreasController < ApplicationController

  def search
    # Define the maximum size of the response list
    max_size = 20

    # Find countries
    areas = Country.search(params[:query], max_size)

    # Define how much more cities do we need to get
    amount_of_areas_left_to_get = max_size - areas.size
    
    # Check if we need to get cities
    areas += City.search(params[:query], amount_of_areas_left_to_get) if amount_of_areas_left_to_get > 0

    render json: areas
  end

  def get
    render json: { type: params[:type], id: params[:id] }
  end

end
