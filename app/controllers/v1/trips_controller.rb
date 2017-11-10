class V1::TripsController < ApiController
  before_action :get_trip, only: [:show, :update, :destroy]
  before_action :authenticate_v1_user!, only: [:create, :update, :destroy]

  def index
  
    # if trip type param is missing return bad request response
    if params[:trip_type]
      render json: {error: "Missing trip type!"}, status: 400
    end

    # (required) Get trips for the trip type
    trips = Trips.where(type: params[:trip_type])
    # (optional) if city_id params was provided
    trips = trips.joins(:cities).where("cities.id = ?", params[:city_id]) if params[:city_id]
    # (optional) if country_id params was provided
    trips = trips.joins(:countries).where("country.id = ?", params[:country_id]) if params[:country_id]
    # (optional) if local_id params was provided
    trips = trips.joins(:local).where("local.id = ?", params[:local_id]) if params[:local_id]
    # Paginate
    trips = trips.page(page).per(per_page)

    render json: trips
  end

  def show

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

    def get_trip
      @trip = Trip.find(params[:trip_id])
    end

    def trip_params
      params.require(:trip).permit(:title, :description, :trip_status, :trip_type, :number_of_people, :from_date, :to_date)
    end
    
end