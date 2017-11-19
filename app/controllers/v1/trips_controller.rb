class V1::TripsController < ApiController
  before_action :get_trip, only: [:show, :update, :destroy]
  before_action :authenticate_v1_user!, only: [:create, :update, :destroy]

  # [GET] Trips (city_id, country_id, local_id, trip_type)
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

    if trip.valid?
      render json: trip, status: 201
    else
      render json: trip.errors.full_messages, status: 422
    end

  end

  def update
    if @trip.update(trip_params)

      render json: @trip, status: 201
    else
      render json: @trip.errors.full_messages, status: 422
    end
  end

  def destroy
    if @trip.bookings.size > 0
      render json: { error: "A trip cannot be deleted because it has bookings!" }, status: 400
    else
      @trip.delete
      render json: {}, status: 200
    end
  end

  private

    def get_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      # If a user is a local, then get the city id from the local model, instead of getting it from the params
      params[:trip][:city_id] = current_v1_user.local.city_id if current_v1_user.has_local?


      # strong parameters. we specify what paremeters do we need for the trips
      return params.require(:trip).permit(:user_id, :title, :description, :number_of_people, :from_date, :to_date, :city_id)
    end
    
end