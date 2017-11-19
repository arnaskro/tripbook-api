class V1::BookingsController < ApiController
  before_action :get_booking, only: [:show, :update]
  before_action :authenticate_v1_user!, only: [:create, :update]

  # [GET] bookings (trip_id, user_id, local_id)
  def index
    bookings = Booking.all
    # (optional) if trip_id params was provided
    bookings = bookings.joins(:trip).where("trips.id = ?", params[:trip_id]) if params[:trip_id]
    # (optional) if user_id params was provided
    bookings = bookings.joins(:user).where("users.id = ?", params[:user_id]) if params[:user_id]
    # (optional) if local_id params was provided
    bookings = bookings.joins(:local).where("locals.id = ?", params[:local_id]) if params[:local_id]
    # Paginate
    bookings = bookings.page(params[:page] || 1).per(params[:per_page] || 20)

    render json: bookings
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
    if @booking.update(booking_params)
      render json: @booking, status: 200
    else
      render json: @booking.errors.full_messages, status: 422
    end
  end

  private

    def get_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:trip_id, :user_id, :from_date, :to_date, :number_of_people, :status)
    end
    
end