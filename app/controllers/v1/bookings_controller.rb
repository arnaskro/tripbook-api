class V1::BookingsController < ApiController
  before_action :get_booking, only: [:show, :update]
  before_action :authenticate_v1_user!, only: [:index, :create, :update]

  # [GET] bookings
  def index
    # if user is not a local get only his bookings
    if !current_v1_user.has_local?
      bookings = current_v1_user.bookings
    else
      # otherwise get his bookings and trip bookings
      bookings = Booking.joins(:trip)
      bookings = bookings.where('bookings.user_id = ?', current_v1_user.id).or(bookings.where('bookings.local_id IS NOT NULL AND bookings.local_id = ?', current_v1_user.get_local_id)).or(bookings.where('trips.local_id = ?', current_v1_user.get_local_id))
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
    booking = Booking.new(booking_params)

    if booking.save
      render json: booking, status: 201
    else
      render json: booking.errors.full_messages, status: 422
    end
  end

  def show
    render json: @booking
  end

  def update
    # if @booking.update(booking_params)
    #   render json: @booking, status: 200
    # else
    #   render json: @booking.errors.full_messages, status: 422
    # end
    
    render json: nil, status: 200
  end

  private

    def get_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:trip_id, :user_id, :from_date, :to_date, :number_of_people, :status)
    end
    
end