class V1::BookingsController < ApiController
  before_action :authenticate_v1_user!, only: [:index, :create, :update]

  # [GET] bookings
  def index
    # if user is not a local get only his bookings
    if !current_v1_user.has_local
      bookings = current_v1_user.bookings
    else
      # otherwise get his bookings and trip bookings
      bookings = Booking.joins(:trip => { :user => :local })
      bookings = bookings.where('bookings.user_id = ?', current_v1_user.id).or(bookings.where('bookings.local_id IS NOT NULL AND bookings.local_id = ?', current_v1_user.get_local_id)).or(bookings.where('locals.id = ?', current_v1_user.get_local_id))
    end

    # Paginate
    bookings = bookings.page(params[:page] || 1).per(params[:per_page] || 20)

      render json: {
        bookings: bookings,
        total: bookings.total_count,
        page: bookings.current_page,
        per_page: bookings.limit_value
      }
  end

  def create

    # Create the trip if needed
    if booking_params[:trip_id].nil?

      # Check if public request
      if trip_params[:city_id].nil?
        trip = Trip.create(
          user: Local.find(trip_params[:local_id]).user,
          title: trip_params[:title],
          description: trip_params[:description],
          city_id: Local.find(trip_params[:local_id]).city_id,
          number_of_people: booking_params[:number_of_people],
          from_date: booking_params[:from_date],
          to_date: booking_params[:to_date],
          trip_type: 0 #0 is private request
        )
      else
        trip = Trip.create(
          user: current_v1_user,
          title: trip_params[:title],
          description: trip_params[:description],
          city_id: trip_params[:city_id],
          number_of_people: booking_params[:number_of_people],
          from_date: booking_params[:from_date],
          to_date: booking_params[:to_date],
          trip_type: 1 #1 is public request
        )
      end
    else
      trip = Trip.find(booking_params[:trip_id])
    end
    
    # Check if trip is valid
    if trip.valid?

      # Create booking
      booking = Booking.new(
          booking_params.merge(
            trip_id: trip.id,
            user: current_v1_user,
            status: 1,
            local_id: booking_params[:trip_id] ? trip.local.id : trip_params[:local_id] # if trip was provided then use the trip local id otherwise we should have a local_id provided in the trip parameters
          )
        )

      if booking.save
        render json: {
          booking: booking,
          trip: {
            id: trip.id,
            url: v1_trips_path(id: trip.id)
          }
        }, status: 201
      else
        render json: booking.errors.full_messages, status: 401
      end

    else
      render json: trip.errors.full_messages, status: 405 and return
    end
  end

  def update
    # Find the booking
    booking = Booking.find(params[:id])
    
    # Set status
    case params[:new_status].downcase
    when "accept"
      new_status = 2
    when "deny"
    when "cancel"
      new_status = 0
    else
      new_status = 1
    end

    if booking.update(status: new_status)
      render json: booking, status: 200
    else
      render json: booking.errors.full_messages, status: 422
    end
  end

  private

    def booking_params
      params.require(:booking).permit(:trip_id, :from_date, :to_date, :number_of_people, :local_id, :city_id)
    end

    def trip_params
      params.require(:trip).permit(:title, :description, :local_id, :city_id)
    end
    
end