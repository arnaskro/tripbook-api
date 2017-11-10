class V1::TripsController < ApiController
  before_action :get_trip, only: [:show, :update, :destroy]
  before_action :authenticate_v1_user!, only: [:create, :update, :destroy]

  def index
    trips = Trip.all
    # (optional) Get trips for the trip type
    trips = trips.where(trip_type: params[:trip_type]) if params[:trip_type]
    # (optional) if city_id params was provided
    trips = trips.joins(:cities).where("cities.id = ?", params[:city_id]) if params[:city_id]
    # (optional) if country_id params was provided
    trips = trips.joins(:countries).where("countries.id = ?", params[:country_id]) if params[:country_id]
    # (optional) if local_id params was provided
    trips = trips.joins(:local).where("locals.id = ?", params[:local_id]) if params[:local_id]
    # Paginate
    trips = trips.page(params[:page] || 1).per(params[:per_page] || 20)

    render json: trips
  end

  def show
    render json: @trip
  end

  def create
    # Create trip
    trip = Trip.create(trip_params)

    # If trip is valid, create trip destinations
    trip.trip_destinations.create(params[:trip][:cities].map{ |city_id| { city_id: city_id } }) if trip.valid?


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