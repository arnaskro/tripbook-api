class V1::MeetingsController < ApiController
  before_action :get_meeting, only: [:show, :update]
  before_action :authenticate_v1_user!, only: [:create, :update]

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
    meeting = Meeting.new(meeting_params)

    if meeting.save
      render json: meeting, status: 201
    else
      render json: meeting.errors.full_messages, status: 422
    end
  end

  def show
    render json: @meeting
  end

  def update
    if @meeting.update(meeting_params)
      render json: @meeting, status: 200
    else
      render json: @meeting.errors.full_messages, status: 422
    end
  end

  private

    def get_meeting
      @meeting = Meeting.find(params[:meeting_id])
    end

    def meeting_params
      params.require(:meeting).permit(:trip_id, :user_id, :meeting_date)
    end
    
end