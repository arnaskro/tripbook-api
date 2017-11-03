class V1::UsersController < ApplicationController
  # before_action :authenticate_v1_user!

  def index
    users = User.active.page(params[:page] || 1).per(20)
    render json: ActiveModelSerializers::SerializableResource.new(users, each_serializer: UserListSerializer).to_json
  end

  def show
    user = User.all.find(params[:id])
    render json: user
  end

end