class V1::TestController < ApiController
  before_action :authenticate_v1_user!

  def members_only
    render json: {
      data: {
        message: "Welcome #{current_v1_user.name}",
        user: current_v1_user
      }
    }, status: 200
  end
end