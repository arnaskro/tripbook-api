class V1::MeetingsController < ApiController
  before_action :get_meeting, only: [:show, :update, :destroy]
  before_action :authenticate_v1_user!, only: [:create, :update, :destroy]

  # [GET] Meetings (trip_id, user_id, local_id)
  def index
    meetings = Meeting.all
    # (optional) if trip_id params was provided
    meetings = meetings.joins(:trip).where("trips.id = ?", params[:trip_id]) if params[:trip_id]
    # (optional) if user_id params was provided
    meetings = meetings.joins(:user).where("users.id = ?", params[:user_id]) if params[:user_id]
    # (optional) if local_id params was provided
    meetings = meetings.joins(:local).where("locals.id = ?", params[:local_id]) if params[:local_id]
    # Paginate
    meetings = meetings.page(params[:page] || 1).per(params[:per_page] || 20)

    render json: meetings
  end

  def create
    
  end

  def show

  end

  def update

  end

  def destroy
    
  end

  private

    def get_meeting
      @meeting = Meeting.find(params[:meeting_id])
    end

    def meeting_params
      params.require(:meeting).permit(:trip_id, :user_id, :meeting_date)
    end
    
end