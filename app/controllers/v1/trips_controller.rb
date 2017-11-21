class V1::TripsController < ApiController
  before_action :authenticate_v1_user!, only: [:get_trips, :create, :update, :destroy]
  before_action :get_trip, only: [:show, :update, :destroy]

  # [GET] Trips (city_id, country_id, trip_type)
  def index
    # Get trips for the trip type
    trips = Trip.all.where(trip_type: params[:trip_type] || 2)
    # (optional) if city_id params was provided
    trips = trips.joins(:city).where("cities.id = ?", params[:city_id]) if params[:city_id]
    # (optional) if country_id params was provided
    trips = trips.joins(:city => :country).where("countries.id = ?", params[:country_id]) if params[:country_id]
    # (optional) if sort params was provided
    if params[:sort]
      
      case params[:sort].downcase
      when 'popularity' # by number of bookings
        trips = trips.most_popular
      when 'rating' # by rating of reviews
        trips = trips.best_rated
      end

    end

    # Paginate
    trips = trips.page(params[:page] || 1).per(params[:per_page] || 20)

    render json: {
      trips: ActiveModelSerializers::SerializableResource.new(trips, each_serializer: TripSerializer),
      total: trips.total_count,
      page: trips.current_page,
      per_page: trips.limit_value
    }
  end

  def get_trips
    # Get trip offers created by the user
    if params[:public]
      trips = Trip.where(trip_type: 1, city_id: params[:city_id])
    else
      trips = current_v1_user.trips.where(trip_type: 2)
    end
    
    trips = trips.page(params[:page] || 1).per(params[:per_page] || 20)

    render json: {
      trips: ActiveModelSerializers::SerializableResource.new(trips, each_serializer: TripSerializer),
      total: trips.total_count,
      page: trips.current_page,
      per_page: trips.limit_value
    }
  end

  def show
    render json: @trip
  end

  def create
    # Stop action if user is not a local
    (render json: {}, status: 401 and return) if !current_v1_user.has_local

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
      # strong parameters. we specify what paremeters do we need for the trips and add additional ones that we need
      return params.require(:trip).permit(:title, :description, :number_of_people, :from_date, :to_date).merge(user_id: current_v1_user.id, city_id: current_v1_user.local.city_id, trip_type: 2)
    end
    
end