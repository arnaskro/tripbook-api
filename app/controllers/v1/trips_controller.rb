class V1::TripsController < ApiController
  before_action :get_trip, only: [:show, :update, :destroy]
  before_action :authenticate_v1_user!, only: [:create, :update, :destroy]

  def index

  end

  def show

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