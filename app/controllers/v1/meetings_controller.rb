class V1::MeetingsController < ApiController
  before_action :get_meeting, only: [:show, :update, :destroy]
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

    def get_meeting
      @meeting = Meeting.find(params[:meeting_id])
    end

    def meeting_params
      params.require(:meeting).permit(:trip_id, :user_id, :meeting_date)
    end
    
end